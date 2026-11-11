$ErrorActionPreference = 'Stop'
$OriginalLocalAppData = $env:LOCALAPPDATA
$TestLocalAppData = Join-Path ([IO.Path]::GetTempPath()) ("GitHub-Trending-KB-tests-" + [guid]::NewGuid().ToString('N'))
$env:LOCALAPPDATA = $TestLocalAppData
$PullScript = Join-Path (Split-Path $PSScriptRoot -Parent) 'obsidian_git_pull.ps1'
. $PullScript

$Root = Join-Path $env:LOCALAPPDATA 'GitHub-Trending-KB\artifacts'
$FixtureDir = Join-Path $Root ("sync-tests-" + [guid]::NewGuid().ToString('N'))
$GitExe = (Get-Command git -ErrorAction Stop).Source
$Utf8 = New-Object System.Text.UTF8Encoding($false)
$ExpectedOrigin = 'https://github.com/gushuomaster/GitHub-Trending-KB.git'

# Never show real toasts from tests; record them instead.
$Notifications = @()
function Show-SyncNotification([string]$Title, [string]$Body) { $script:Notifications += $Title }

function Invoke-FixtureGit([string]$Directory, [string[]]$Arguments) {
    $PreviousPreference = $ErrorActionPreference
    try {
        $ErrorActionPreference = 'Continue'
        $Output = & $GitExe -C $Directory -c user.name=SyncTest -c user.email=sync-test@example.invalid @Arguments 2>&1 | Out-String
    }
    finally { $ErrorActionPreference = $PreviousPreference }
    if ($LASTEXITCODE -ne 0) { throw "Fixture git $($Arguments -join ' ') failed in ${Directory}: $Output" }
    return $Output.Trim()
}

function Assert-Git([string[]]$Arguments) { $null = Invoke-FixtureGit $FixtureDir $Arguments }

function Assert-True([bool]$Condition, [string]$Message) { if (-not $Condition) { throw $Message } }

try {
    # Windows PowerShell 5.1 reads BOM-less files as ANSI, which corrupts the Chinese
    # notification text and breaks parsing of the whole script.
    $Bytes = [IO.File]::ReadAllBytes($PullScript)
    $HasBom = $Bytes.Length -ge 3 -and $Bytes[0] -eq 0xEF -and $Bytes[1] -eq 0xBB -and $Bytes[2] -eq 0xBF
    $IsAscii = -not ($Bytes | Where-Object { $_ -gt 0x7F } | Select-Object -First 1)
    Assert-True ($HasBom -or $IsAscii) 'obsidian_git_pull.ps1 contains non-ASCII text and must be saved as UTF-8 with BOM'

    # --- Git output handling and EOL contract -------------------------------------
    New-Item -ItemType Directory -Path (Join-Path $FixtureDir 'Index') -Force | Out-Null
    Assert-Git -Arguments @('init')
    Assert-Git -Arguments @('config', 'core.autocrlf', 'false')
    [IO.File]::WriteAllText((Join-Path $FixtureDir '.gitattributes'), "*.jsonl text eol=lf`n", $Utf8)
    $Jsonl = Join-Path $FixtureDir 'Index\projects.jsonl'
    [IO.File]::WriteAllText($Jsonl, "{`"id`":1}`r`n{`"id`":2}`n", $Utf8)
    Assert-Git -Arguments @('add', '.gitattributes', 'Index/projects.jsonl')
    $RawSha = (& $GitExe -C $FixtureDir hash-object -w --no-filters $Jsonl).Trim()
    if ($LASTEXITCODE -ne 0) { throw 'Could not create the mixed-EOL fixture blob' }
    Assert-Git -Arguments @('update-index', '--cacheinfo', "100644,$RawSha,Index/projects.jsonl")
    Assert-Git -Arguments @('commit', '-m', 'fixture')
    [IO.File]::SetLastWriteTimeUtc($Jsonl, (Get-Date).ToUniversalTime().AddSeconds(2))

    $VaultPath = $FixtureDir
    $script:GitExe = $GitExe
    $Quoted = Invoke-GitResult -GitArgs @('-c', 'user.name=Sync Test', 'config', '--get', 'user.name')
    Assert-True ($Quoted.ExitCode -eq 0 -and $Quoted.Output -eq 'Sync Test') 'Native argument quoting failed for a value containing spaces'
    $WarningResult = Invoke-GitResult -GitArgs @('diff', '--ignore-space-at-eol', '--quiet', '--', 'Index/projects.jsonl')
    Assert-True ($WarningResult.ExitCode -eq 0) "EOL-only diff should exit 0: $($WarningResult.Error)"
    Assert-True ($WarningResult.Error -match 'CRLF') 'Expected Git warning on stderr to be captured'
    Assert-True (-not $WarningResult.Output) 'Git warning must not be mistaken for stdout'

    [IO.File]::WriteAllText((Join-Path $FixtureDir '.gitattributes'), "*.jsonl -text`n", $Utf8)
    $Status = Invoke-Git -GitArgs @('status', '--short', '--', 'Index/projects.jsonl')
    Assert-True (-not $Status) 'Disabling JSONL normalization should clear the phantom change'

    [IO.File]::WriteAllText($Jsonl, "{`"id`":3}`r`n{`"id`":2}`n", $Utf8)
    $Changed = Invoke-GitResult -GitArgs @('diff', '--ignore-space-at-eol', '--quiet', '--', 'Index/projects.jsonl')
    Assert-True ($Changed.ExitCode -eq 1) 'Semantic edits must still be detected'
    Write-Host 'PASS: Git warning, EOL attribute, and semantic-change regression tests'

    # --- Retry controller ---------------------------------------------------------
    $AttemptCount = 0
    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -AttemptAction { $script:AttemptCount++; return $true } `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    Assert-True ($Succeeded -and $AttemptCount -eq 1 -and $Waits.Count -eq 0) 'A successful first attempt must not retry or wait'

    $AttemptCount = 0
    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -AttemptAction { $script:AttemptCount++; return ($script:AttemptCount -eq 3) } `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    Assert-True ($Succeeded -and $AttemptCount -eq 3) 'A third-attempt success must run the attempt action three times'
    Assert-True ($Waits.Count -eq 2 -and $Waits[0] -eq 600 -and $Waits[1] -eq 600) 'Retries must wait exactly twice using the configured delay'

    $Notifications = @()
    $AttemptCount = 0
    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -AttemptAction { $script:AttemptCount++; return $false } `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    Assert-True (-not $Succeeded -and $AttemptCount -eq 3 -and $Waits.Count -eq 2) 'An exhausted run must fail after three attempts and two waits'
    Assert-True ($Notifications.Count -eq 1) 'A failed run must notify the user'
    $null = Start-ObsidianGitSync -AttemptLimit 1 -DelaySeconds 0 -AttemptAction { return $false } -DelayAction { }
    Assert-True ($Notifications.Count -eq 1) 'Repeated hourly failures must not notify again within the throttle window'
    $Status = Get-Content -LiteralPath $StatusFile -Raw -Encoding UTF8 | ConvertFrom-Json
    Assert-True ($Status.result -eq 'failed') 'status.json must record the failed run'
    $null = Start-ObsidianGitSync -AttemptLimit 1 -DelaySeconds 0 -AttemptAction { return $true } -DelayAction { }
    $null = Start-ObsidianGitSync -AttemptLimit 1 -DelaySeconds 0 -AttemptAction { return $false } -DelayAction { }
    Assert-True ($Notifications.Count -eq 2) 'A new failure after a success must notify again'

    $AttemptCount = 0
    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -AttemptAction { $script:AttemptCount++; return 'Fatal' } `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    Assert-True (-not $Succeeded -and $AttemptCount -eq 1 -and $Waits.Count -eq 0) 'Fatal errors must stop without retrying'
    Write-Host 'PASS: retry controller, status file, and notification throttle tests'

    # --- Network rediscovery (Git and network doubled) ------------------------------
    $RemoteChecks = 0
    $SystemProxyChecks = 0
    $ClashChecks = 0
    function Invoke-Git([string[]]$GitArgs) {
        if ($GitArgs[0] -eq 'remote') { $script:RemoteChecks++; return $ExpectedOrigin }
        $IsFetch = $GitArgs[0] -eq 'fetch' -or $GitArgs -contains 'fetch'
        if ($IsFetch -and $script:RemoteChecks -lt 3) { throw 'simulated network unavailable' }
        if ($GitArgs[0] -eq 'rev-parse') { return 'abc1234def5678' }
        return ''
    }
    function Get-WindowsSystemProxy { $script:SystemProxyChecks++; return $null }
    function Get-ClashProxyCandidates { $script:ClashChecks++; return }
    function Get-LocalState([string]$Target) {
        return [pscustomobject]@{ Branch = 'main'; Head = $Target; Ahead = 0; Semantic = $false; WhitespaceOnly = $false; BlockingUntracked = @() }
    }

    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    Assert-True ($Succeeded -and $RemoteChecks -eq 3) 'Each retry must execute the complete sync attempt from origin validation'
    Assert-True ($SystemProxyChecks -eq 2 -and $ClashChecks -eq 2) 'Each failed attempt must rerun Windows and Clash proxy discovery'
    Assert-True ($Waits.Count -eq 2) 'Network recovery must retain exactly two injected retry waits'
    Write-Host 'PASS: full network rediscovery regression tests'

    # --- End-to-end mirror behaviour against a real local "origin" -----------------
    # Restore the real functions, then intercept only the origin URL check.
    . $PullScript
    function Show-SyncNotification([string]$Title, [string]$Body) { $script:Notifications += $Title }
    function Invoke-Git([string[]]$GitArgs) {
        if ($GitArgs[0] -eq 'remote' -and $GitArgs[1] -eq 'get-url') { return $ExpectedOrigin }
        $result = Invoke-GitResult -GitArgs $GitArgs
        if ($result.ExitCode -ne 0) { throw "git $($GitArgs[0]) failed with exit code $($result.ExitCode): $($result.Error)" }
        return $result.Output
    }

    $E2E = Join-Path $Root ("mirror-" + [guid]::NewGuid().ToString('N'))
    $Bare = Join-Path $E2E 'origin.git'
    $Cloud = Join-Path $E2E 'cloud'
    $Vault = Join-Path $E2E 'vault'
    New-Item -ItemType Directory -Path $Cloud -Force | Out-Null
    $null = Invoke-FixtureGit $E2E @('init', '--bare', '-b', 'main', $Bare)
    $null = Invoke-FixtureGit $Cloud @('init', '-b', 'main')
    $null = Invoke-FixtureGit $Cloud @('config', 'core.autocrlf', 'false')
    [IO.File]::WriteAllText((Join-Path $Cloud '.gitattributes'), "*.md text eol=lf`n", $Utf8)
    [IO.File]::WriteAllText((Join-Path $Cloud 'README.md'), "v1`n", $Utf8)
    $null = Invoke-FixtureGit $Cloud @('add', '.')
    $null = Invoke-FixtureGit $Cloud @('commit', '-m', 'v1')
    $null = Invoke-FixtureGit $Cloud @('remote', 'add', 'origin', $Bare)
    $null = Invoke-FixtureGit $Cloud @('push', 'origin', 'main')
    $null = Invoke-FixtureGit $E2E @('clone', $Bare, $Vault)
    $null = Invoke-FixtureGit $Vault @('config', 'core.autocrlf', 'false')
    $VaultPath = $Vault

    function Publish-Cloud([string]$Path, [string]$Content) {
        $Full = Join-Path $Cloud $Path
        New-Item -ItemType Directory -Path (Split-Path $Full -Parent) -Force | Out-Null
        [IO.File]::WriteAllText($Full, $Content, $Utf8)
        $null = Invoke-FixtureGit $Cloud @('add', '.')
        $null = Invoke-FixtureGit $Cloud @('commit', '-m', "publish $Path")
        $null = Invoke-FixtureGit $Cloud @('push', 'origin', 'main')
        return (Invoke-FixtureGit $Cloud @('rev-parse', 'HEAD'))
    }
    function Assert-Mirrored([string]$Expected, [string]$Message) {
        Assert-True ((Invoke-FixtureGit $Vault @('rev-parse', 'HEAD')) -eq $Expected) "$Message (HEAD mismatch)"
        Assert-True ((Invoke-FixtureGit $Vault @('symbolic-ref', '--short', 'HEAD')) -eq 'main') "$Message (not on main)"
        Assert-True (-not (Invoke-FixtureGit $Vault @('status', '--porcelain', '--untracked-files=no'))) "$Message (dirty)"
    }
    function Get-BackupDirs { return @(Get-ChildItem -LiteralPath $BackupRoot -Directory -ErrorAction SilentlyContinue) }
    function Invoke-Sync { return (Start-ObsidianGitSync -AttemptLimit 1 -DelaySeconds 0 -DelayAction { }) }

    # 1. Plain fast-forward, and an up-to-date run that changes nothing.
    $Expected = Publish-Cloud 'Daily/2026-11-10.md' "report`n"
    Assert-True (Invoke-Sync) 'Fast-forward sync must succeed'
    Assert-Mirrored $Expected 'Fast-forward'
    Assert-True (Invoke-Sync) 'Up-to-date sync must succeed'
    Assert-True ((Get-BackupDirs).Count -eq 0) 'Clean syncs must not create backups'

    # 1b. Obsidian's properties editor inserting a blank line after frontmatter is
    #     discarded without a backup or a notification.
    $Note = Join-Path $Vault 'Daily\2026-11-10.md'
    [IO.File]::WriteAllText($Note, "---`ntitle: x`n---`n# Report`n", $Utf8)
    $null = Invoke-FixtureGit $Vault @('add', '.')
    $null = Invoke-FixtureGit $Vault @('commit', '-m', 'temp')
    $Expected = Invoke-FixtureGit $Vault @('rev-parse', 'HEAD')
    $null = Invoke-FixtureGit $Vault @('push', 'origin', 'main')
    $null = Invoke-FixtureGit $Cloud @('pull', '--ff-only', 'origin', 'main')
    [IO.File]::WriteAllText($Note, "---`ntitle: x`n---`n`n# Report`n", $Utf8)
    $Notifications = @()
    Assert-True (Invoke-Sync) 'Whitespace-only edits must not block the mirror'
    Assert-Mirrored $Expected 'Whitespace-only edit'
    Assert-True ((Get-BackupDirs).Count -eq 0) 'Whitespace-only edits must not create backups'
    Assert-True ($Notifications.Count -eq 0) 'Whitespace-only edits must not notify'

    # 2. Diverged: a local-only commit (the 2026-11-10 outage) must be backed up, not block.
    [IO.File]::WriteAllText((Join-Path $Vault 'Tools.md'), "local fix`n", $Utf8)
    $null = Invoke-FixtureGit $Vault @('add', 'Tools.md')
    $null = Invoke-FixtureGit $Vault @('commit', '-m', 'local only')
    $LocalCommit = Invoke-FixtureGit $Vault @('rev-parse', 'HEAD')
    $Expected = Publish-Cloud 'Daily/2026-11-11.md' "report`n"
    $Notifications = @()
    Assert-True (Invoke-Sync) 'Diverged vault must self-heal'
    Assert-Mirrored $Expected 'Diverged'
    $Backup = (Get-BackupDirs)[-1].FullName
    Assert-True (Test-Path -LiteralPath (Join-Path $Backup 'unpushed-commits.patch')) 'Unpushed commits must be exported as a patch'
    $Refs = Invoke-FixtureGit $Vault @('for-each-ref', '--format=%(objectname)', 'refs/sync-backup/')
    Assert-True ($Refs -match $LocalCommit) 'The local-only commit must stay reachable from a backup ref'
    Assert-True ($Notifications.Count -eq 1) 'Overwriting local state must notify the user'
    Start-Sleep -Seconds 1

    # 3. Semantic tracked edit plus staged edit.
    [IO.File]::WriteAllText((Join-Path $Vault 'README.md'), "edited in Obsidian`n", $Utf8)
    [IO.File]::WriteAllText((Join-Path $Vault 'Daily\2026-11-10.md'), "staged edit`n", $Utf8)
    $null = Invoke-FixtureGit $Vault @('add', 'Daily/2026-11-10.md')
    $Expected = Publish-Cloud 'Daily/2026-11-12.md' "report`n"
    Assert-True (Invoke-Sync) 'Tracked edits must not block the mirror'
    Assert-Mirrored $Expected 'Tracked edits'
    $Backup = (Get-BackupDirs)[-1].FullName
    $Patch = [IO.File]::ReadAllText((Join-Path $Backup 'tracked-changes.patch'))
    Assert-True ($Patch -match 'edited in Obsidian' -and $Patch -match 'staged edit') 'Tracked and staged edits must be saved in the backup patch'
    Start-Sleep -Seconds 1

    # 4. Untracked file that an incoming commit adds; untracked notes elsewhere survive.
    [IO.File]::WriteAllText((Join-Path $Vault 'Daily\2026-11-13.md'), "my draft`n", $Utf8)
    [IO.File]::WriteAllText((Join-Path $Vault 'my-notes.md'), "keep me`n", $Utf8)
    $Expected = Publish-Cloud 'Daily/2026-11-13.md' "official`n"
    Assert-True (Invoke-Sync) 'Untracked files in the way must not block the mirror'
    Assert-Mirrored $Expected 'Untracked in the way'
    $Backup = (Get-BackupDirs)[-1].FullName
    Assert-True ([IO.File]::ReadAllText((Join-Path $Backup 'untracked\Daily\2026-11-13.md')) -eq "my draft`n") 'Overwritten untracked file must be copied to the backup'
    Assert-True (Test-Path -LiteralPath (Join-Path $Vault 'my-notes.md')) 'Unrelated untracked files must be kept'
    Start-Sleep -Seconds 1

    # 5. Wrong branch / detached HEAD.
    $null = Invoke-FixtureGit $Vault @('checkout', '--detach', 'HEAD~1')
    $Expected = Publish-Cloud 'Daily/2026-11-14.md' "report`n"
    Assert-True (Invoke-Sync) 'Detached HEAD must be repaired'
    Assert-Mirrored $Expected 'Detached HEAD'

    # 6. Interrupted rebase left behind by a crash.
    New-Item -ItemType Directory -Path (Join-Path $Vault '.git\rebase-merge') -Force | Out-Null
    $Expected = Publish-Cloud 'Daily/2026-11-15.md' "report`n"
    Assert-True (Invoke-Sync) 'Interrupted rebase state must be cleared'
    Assert-Mirrored $Expected 'Interrupted rebase'
    Assert-True (-not (Test-Path -LiteralPath (Join-Path $Vault '.git\rebase-merge'))) 'rebase-merge must be removed'

    # 7. Stale index.lock from a crash is removed; a fresh one is respected.
    $Lock = Join-Path $Vault '.git\index.lock'
    [IO.File]::WriteAllText($Lock, '', $Utf8)
    $Expected = Publish-Cloud 'Daily/2026-11-16.md' "report`n"
    Assert-True (-not (Invoke-Sync)) 'A fresh lock held by another Git process must not be removed'
    Assert-True (Test-Path -LiteralPath $Lock) 'A fresh lock must remain'
    [IO.File]::SetLastWriteTime($Lock, (Get-Date).AddMinutes(-30))
    Assert-True (Invoke-Sync) 'A stale lock must be cleared'
    Assert-Mirrored $Expected 'Stale lock'

    # 8. Once today's daily report is present, later runs today do nothing.
    $Expected = Publish-Cloud 'Daily/2026-11-17.md' "older report`n"
    Assert-True (Invoke-Sync) 'Sync without today''s report must succeed'
    $Status = Get-Content -LiteralPath $StatusFile -Raw -Encoding UTF8 | ConvertFrom-Json
    Assert-True (-not $Status.reportDate) 'A sync without today''s report must not mark the day as done'
    $TodayPath = 'Daily/{0:yyyy}/{0:MM}/{0:yyyy-MM-dd}.md' -f (Get-Date)
    $Expected = Publish-Cloud $TodayPath "today`n"
    Assert-True (Invoke-Sync) 'Sync with today''s report must succeed'
    Assert-Mirrored $Expected 'Today''s report'
    $Status = Get-Content -LiteralPath $StatusFile -Raw -Encoding UTF8 | ConvertFrom-Json
    Assert-True ($Status.reportDate -eq (Get-Date -Format 'yyyy-MM-dd')) 'Arrival of today''s report must mark the day as done'
    $Audit = Publish-Cloud 'Daily/audit.md' "afternoon audit`n"
    Assert-True (Invoke-Sync) 'A skipped run must report success'
    Assert-Mirrored $Expected 'Skipped run must not touch the vault'
    Assert-True (Start-ObsidianGitSync -AttemptLimit 1 -DelaySeconds 0 -DelayAction { } -IgnoreDoneToday) 'Forced sync must succeed'
    Assert-Mirrored $Audit 'Forced sync must update after the day is done'
    $Status.reportDate = '2000-01-01'
    [IO.File]::WriteAllText($StatusFile, ($Status | ConvertTo-Json), $Utf8)
    $Tomorrow = Publish-Cloud 'Daily/next.md' "next day`n"
    Assert-True (Invoke-Sync) 'A new day must sync again'
    Assert-Mirrored $Tomorrow 'A done marker from an earlier day must not skip'

    # 9. A foreign origin is fatal and not retried.
    function Invoke-Git([string[]]$GitArgs) {
        if ($GitArgs[0] -eq 'remote') { return 'https://github.com/someone-else/repo.git' }
        throw 'must not run other git commands'
    }
    $Waits = @()
    Assert-True (-not (Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 -IgnoreDoneToday -DelayAction { param($Seconds) $script:Waits += $Seconds })) 'Foreign origin must fail'
    Assert-True ($Waits.Count -eq 0) 'Foreign origin must not be retried'
    Write-Host 'PASS: end-to-end mirror self-healing tests'
}
finally {
    $ResolvedRoot = [IO.Path]::GetFullPath($TestLocalAppData).TrimEnd('\') + '\'
    $ResolvedFixture = [IO.Path]::GetFullPath($FixtureDir)
    if (-not $ResolvedFixture.StartsWith($ResolvedRoot, [StringComparison]::OrdinalIgnoreCase)) {
        throw "Refusing to remove unexpected fixture path: $ResolvedFixture"
    }
    $ResolvedTempRoot = [IO.Path]::GetFullPath([IO.Path]::GetTempPath()).TrimEnd('\') + '\'
    $ResolvedTestRoot = [IO.Path]::GetFullPath($TestLocalAppData)
    if (-not $ResolvedTestRoot.StartsWith($ResolvedTempRoot, [StringComparison]::OrdinalIgnoreCase)) {
        throw "Refusing to remove unexpected test root: $ResolvedTestRoot"
    }
    try {
        if (Test-Path -LiteralPath $ResolvedTestRoot) {
            Get-ChildItem -LiteralPath $ResolvedTestRoot -Recurse -Force | ForEach-Object { $_.Attributes = 'Normal' }
            Remove-Item -LiteralPath $ResolvedTestRoot -Recurse -Force
        }
    }
    finally {
        $env:LOCALAPPDATA = $OriginalLocalAppData
    }
}
