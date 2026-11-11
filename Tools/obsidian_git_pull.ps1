param(
    [string]$VaultPath = "D:\gs\GitHub-Trending-KB",
    [string]$Branch = "main",
    [ValidateRange(1, 10)][int]$MaxAttempts = 3,
    [ValidateRange(0, 86400)][int]$RetryDelaySeconds = 300,
    # Once a sync succeeds and today's daily report is present locally, the remaining
    # hourly runs of the day exit immediately. -Force syncs regardless.
    [string]$DailyReportPattern = "Daily/{0:yyyy}/{0:MM}/{0:yyyy-MM-dd}.md",
    [switch]$Force
)

# The vault is a read-only mirror of GitHub origin/$Branch. Anything that exists
# only locally (commits, tracked edits, a different branch, untracked files in the
# way of incoming files) is backed up first and then replaced by the remote state.

$ErrorActionPreference = "Stop"
$AppDir = Join-Path $env:LOCALAPPDATA "GitHub-Trending-KB"
$LogFile = Join-Path $AppDir "sync.log"
$StatusFile = Join-Path $AppDir "status.json"
$BackupRoot = Join-Path $AppDir "backups"
$MaxLogBytes = 1MB
$StaleLockMinutes = 10
$FailureNotifyHours = 12
$script:BackupNotice = $null

function Write-Log([string]$Message) {
    New-Item -ItemType Directory -Path $AppDir -Force | Out-Null
    "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] $Message" |
        Out-File -LiteralPath $LogFile -Append -Encoding utf8
}

function Invoke-LogRotation {
    try {
        if ((Test-Path -LiteralPath $LogFile) -and (Get-Item -LiteralPath $LogFile).Length -gt $MaxLogBytes) {
            Move-Item -LiteralPath $LogFile -Destination ($LogFile + ".1") -Force
        }
    }
    catch { return }
}

function Quote-NativeArgument([string]$Value) {
    if ($Value -ne '' -and $Value -notmatch '[\s"]') { return $Value }
    $quoted = '"'
    $slashes = 0
    foreach ($character in $Value.ToCharArray()) {
        if ($character -eq '\') { $slashes++; continue }
        if ($character -eq '"') { $quoted += ('\' * ($slashes * 2 + 1)) }
        else { $quoted += ('\' * $slashes) }
        $quoted += $character
        $slashes = 0
    }
    return $quoted + ('\' * ($slashes * 2)) + '"'
}

function Invoke-GitResult([string[]]$GitArgs) {
    # Keep stdout, stderr, and the process exit code separate under PowerShell 5.1.
    $start = New-Object System.Diagnostics.ProcessStartInfo
    $start.FileName = $script:GitExe
    $start.WorkingDirectory = $VaultPath
    $start.Arguments = (($GitArgs | ForEach-Object { Quote-NativeArgument $_ }) -join ' ')
    $start.UseShellExecute = $false
    $start.CreateNoWindow = $true
    $start.RedirectStandardOutput = $true
    $start.RedirectStandardError = $true
    $start.StandardOutputEncoding = New-Object System.Text.UTF8Encoding($false)
    $start.StandardErrorEncoding = New-Object System.Text.UTF8Encoding($false)
    $process = [System.Diagnostics.Process]::Start($start)
    try {
        $stdout = $process.StandardOutput.ReadToEndAsync()
        $stderr = $process.StandardError.ReadToEndAsync()
        $process.WaitForExit()
        return [pscustomobject]@{
            ExitCode = $process.ExitCode
            Output = $stdout.Result.Trim()
            Error = $stderr.Result.Trim()
        }
    }
    finally { $process.Dispose() }
}

function Invoke-Git([string[]]$GitArgs) {
    $result = Invoke-GitResult -GitArgs $GitArgs
    if ($result.ExitCode -ne 0) {
        throw "git $($GitArgs[0]) failed with exit code $($result.ExitCode): $($result.Error) $($result.Output)"
    }
    return $result.Output
}

function Get-WindowsSystemProxy {
    try {
        $settings = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -ErrorAction Stop
        if ($settings.ProxyEnable -ne 1 -or -not $settings.ProxyServer) { return $null }
        $raw = [string]$settings.ProxyServer
        $scheme = 'http://'
        if ($raw -match '(?i)(?:^|;)https=([^;]+)') { $target = $Matches[1] }
        elseif ($raw -match '(?i)(?:^|;)http=([^;]+)') { $target = $Matches[1] }
        elseif ($raw -match '(?i)(?:^|;)socks=([^;]+)') {
            $target = $Matches[1]
            $scheme = 'socks5h://'
        }
        elseif ($raw -notmatch '=') { $target = $raw }
        else { return $null }
        if ($target -match '^[a-z]+://') { return $target }
        return "$scheme$target"
    }
    catch { return $null }
}

function Get-ClashProxyCandidates {
    try {
        $clashProcessIds = @(Get-Process -ErrorAction SilentlyContinue |
            Where-Object { $_.ProcessName -match '(?i)clash|mihomo' } |
            Select-Object -ExpandProperty Id)
        if ($clashProcessIds.Count -eq 0) { return }
        $ports = @(Get-NetTCPConnection -State Listen -ErrorAction SilentlyContinue |
            Where-Object { $clashProcessIds -contains $_.OwningProcess -and $_.LocalPort -gt 1024 } |
            Select-Object -ExpandProperty LocalPort -Unique | Select-Object -First 10)
        foreach ($port in $ports) {
            "http://127.0.0.1:$port"
            "socks5h://127.0.0.1:$port"
        }
    }
    catch { return }
}

function Invoke-OriginFetch {
    try {
        $null = Invoke-Git -GitArgs @("fetch", "origin", $Branch)
        return
    }
    catch { Write-Log ("Configured connection failed: " + $_.Exception.Message) }

    $systemProxy = Get-WindowsSystemProxy
    if ($systemProxy) {
        try {
            $null = Invoke-Git -GitArgs @("-c", "http.sslBackend=openssl", "-c", "remote.origin.proxy=$systemProxy", "fetch", "origin", $Branch)
            $null = Invoke-Git -GitArgs @("config", "--local", "--replace-all", "remote.origin.proxy", $systemProxy)
            $null = Invoke-Git -GitArgs @("config", "--local", "--replace-all", "http.sslBackend", "openssl")
            Write-Log "OK: origin now follows the verified Windows system proxy"
            return
        }
        catch { Write-Log ("Current Windows system proxy did not connect: " + $_.Exception.Message) }
    }
    foreach ($candidate in @(Get-ClashProxyCandidates | Where-Object { $_ })) {
        if ($candidate -eq $systemProxy) { continue }
        try {
            $null = Invoke-Git -GitArgs @("-c", "http.sslBackend=openssl", "-c", "remote.origin.proxy=$candidate", "fetch", "origin", $Branch)
            $null = Invoke-Git -GitArgs @("config", "--local", "--replace-all", "remote.origin.proxy", $candidate)
            $null = Invoke-Git -GitArgs @("config", "--local", "--replace-all", "http.sslBackend", "openssl")
            Write-Log "OK: origin now uses a verified local Clash listener"
            return
        }
        catch { Write-Log ("Local proxy $candidate did not connect: " + $_.Exception.Message) }
    }
    Write-Log "Trying origin without a proxy (also supports Clash TUN mode)"
    $null = Invoke-Git -GitArgs @("-c", "http.sslBackend=openssl", "-c", "remote.origin.proxy=", "fetch", "origin", $Branch)
    Write-Log "OK: origin connected without an explicit Git proxy"
}

function Get-GitDir {
    return (Join-Path $VaultPath ".git")
}

function Clear-StaleGitLocks {
    # A crash or forced shutdown during a Git command leaves *.lock files that block
    # every later run. Only locks older than the threshold are treated as abandoned.
    $gitDir = Get-GitDir
    $candidates = @(
        (Join-Path $gitDir "index.lock"),
        (Join-Path $gitDir "HEAD.lock"),
        (Join-Path $gitDir "ORIG_HEAD.lock"),
        (Join-Path $gitDir "FETCH_HEAD.lock"),
        (Join-Path $gitDir "packed-refs.lock"),
        (Join-Path $gitDir "config.lock"),
        (Join-Path $gitDir "refs\heads\$Branch.lock"),
        (Join-Path $gitDir "refs\remotes\origin\$Branch.lock")
    )
    $cutoff = (Get-Date).AddMinutes(-$StaleLockMinutes)
    foreach ($lock in $candidates) {
        if (-not (Test-Path -LiteralPath $lock)) { continue }
        $item = Get-Item -LiteralPath $lock -Force
        if ($item.LastWriteTime -lt $cutoff) {
            Remove-Item -LiteralPath $lock -Force
            Write-Log "OK: removed stale Git lock $($item.Name) from $($item.LastWriteTime.ToString('yyyy-MM-dd HH:mm:ss'))"
        }
    }
}

function Clear-InterruptedGitOperations {
    # Leftover rebase/cherry-pick/revert state; the mirror reset discards it after backup.
    $gitDir = Get-GitDir
    $rebaseDirs = @("rebase-merge", "rebase-apply") | ForEach-Object { Join-Path $gitDir $_ } |
        Where-Object { Test-Path -LiteralPath $_ }
    if ($rebaseDirs) {
        $null = Invoke-GitResult -GitArgs @("rebase", "--quit")
        foreach ($dir in $rebaseDirs) {
            # A crash can leave a state directory too incomplete for `rebase --quit`.
            if (Test-Path -LiteralPath $dir) { Remove-Item -LiteralPath $dir -Recurse -Force }
        }
        Write-Log "OK: cleared an interrupted rebase"
    }
    if (Test-Path -LiteralPath (Join-Path $gitDir "sequencer")) {
        $null = Invoke-GitResult -GitArgs @("cherry-pick", "--quit")
        $null = Invoke-GitResult -GitArgs @("revert", "--quit")
        $sequencer = Join-Path $gitDir "sequencer"
        if (Test-Path -LiteralPath $sequencer) { Remove-Item -LiteralPath $sequencer -Recurse -Force }
        Write-Log "OK: cleared an interrupted cherry-pick/revert"
    }
}

function Get-LocalState([string]$Target) {
    $branchResult = Invoke-GitResult -GitArgs @("symbolic-ref", "-q", "--short", "HEAD")
    $currentBranch = if ($branchResult.ExitCode -eq 0) { $branchResult.Output } else { "" }
    $head = Invoke-Git -GitArgs @("rev-parse", "HEAD")
    $ahead = [int](Invoke-Git -GitArgs @("rev-list", "--count", "$Target..HEAD"))

    # Whitespace-only edits (EOL conversion, or Obsidian's properties editor adding a
    # blank line after frontmatter when a note is merely viewed) are discarded silently.
    $semantic = $false
    $whitespaceOnly = $false
    if (Invoke-Git -GitArgs @("status", "--porcelain", "--untracked-files=no")) {
        $diff = Invoke-GitResult -GitArgs @("diff", "HEAD", "--ignore-all-space", "--ignore-blank-lines", "--quiet")
        if ($diff.ExitCode -gt 1) { throw "git diff failed with exit code $($diff.ExitCode): $($diff.Error)" }
        if ($diff.ExitCode -eq 1) { $semantic = $true } else { $whitespaceOnly = $true }
    }

    # Untracked files that an incoming commit would overwrite.
    $blocking = @()
    if ($head -ne $Target) {
        $added = Invoke-Git -GitArgs @("-c", "core.quotepath=false", "diff", "--name-only", "--no-renames", "--diff-filter=A", "HEAD", $Target)
        foreach ($path in @($added -split "`n" | Where-Object { $_ })) {
            $path = $path.Trim()
            if (Test-Path -LiteralPath (Join-Path $VaultPath $path) -PathType Leaf) { $blocking += $path }
        }
    }

    return [pscustomobject]@{
        Branch = $currentBranch
        Head = $head
        Ahead = $ahead
        Semantic = $semantic
        WhitespaceOnly = $whitespaceOnly
        BlockingUntracked = $blocking
    }
}

function Save-LocalStateBackup([object]$State, [string]$Target) {
    $stamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $dir = Join-Path $BackupRoot $stamp
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
    $utf8 = New-Object System.Text.UTF8Encoding($false)
    $notes = @(
        "time=$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')",
        "branch=$($State.Branch)",
        "head=$($State.Head)",
        "origin/$Branch=$Target",
        "unpushed_commits=$($State.Ahead)",
        "tracked_changes=$($State.Semantic)",
        "untracked_in_the_way=$($State.BlockingUntracked -join ', ')"
    )

    if ($State.Ahead -gt 0 -or $State.Branch -ne $Branch) {
        $null = Invoke-Git -GitArgs @("update-ref", "refs/sync-backup/$stamp/head", $State.Head)
        $notes += "ref=refs/sync-backup/$stamp/head"
        if ($State.Ahead -gt 0) {
            $patch = Invoke-Git -GitArgs @("format-patch", "--stdout", "$Target..$($State.Head)")
            [IO.File]::WriteAllText((Join-Path $dir "unpushed-commits.patch"), $patch + "`n", $utf8)
        }
    }
    if ($State.Semantic) {
        $stash = Invoke-Git -GitArgs @("-c", "user.name=GitHub-Trending-KB Sync", "-c", "user.email=sync@localhost", "stash", "create", "sync backup $stamp")
        if ($stash) {
            $null = Invoke-Git -GitArgs @("update-ref", "refs/sync-backup/$stamp/worktree", $stash)
            $notes += "ref=refs/sync-backup/$stamp/worktree"
        }
        $diff = Invoke-Git -GitArgs @("diff", "HEAD", "--binary")
        [IO.File]::WriteAllText((Join-Path $dir "tracked-changes.patch"), $diff + "`n", $utf8)
    }
    foreach ($path in $State.BlockingUntracked) {
        $destination = Join-Path (Join-Path $dir "untracked") $path
        New-Item -ItemType Directory -Path (Split-Path $destination -Parent) -Force | Out-Null
        Copy-Item -LiteralPath (Join-Path $VaultPath $path) -Destination $destination -Force
    }
    [IO.File]::WriteAllText((Join-Path $dir "README.txt"), ($notes -join "`r`n") + "`r`n", $utf8)
    Write-Log "BACKUP: local-only state saved to $dir ($($notes[3..6] -join '; '))"
    $script:BackupNotice = $dir
}

function Test-TodayReportPresent {
    $path = $DailyReportPattern -f (Get-Date)
    $result = Invoke-GitResult -GitArgs @("cat-file", "-e", "HEAD:$path")
    if ($result.ExitCode -eq 0) { $script:ReportDate = Get-Date -Format 'yyyy-MM-dd' }
}

function Invoke-ObsidianGitSyncAttempt {
    # Returns $true on success, $false for a retryable failure, 'Fatal' when retrying cannot help.
    try {
        if (-not (Test-Path -LiteralPath (Join-Path $VaultPath ".git"))) {
            Write-Log "Attempt failed: Vault is not a Git repository: $VaultPath"
            return 'Fatal'
        }
        $script:GitExe = (Get-Command git -ErrorAction Stop).Source
        $remote = Invoke-Git -GitArgs @("remote", "get-url", "origin")
        if ($remote -notmatch '(?i)^(?:https://(?:[^/@]+@)?github\.com/|git@github\.com:|ssh://git@github\.com/)gushuomaster/GitHub-Trending-KB(?:\.git)?/?$') {
            Write-Log "Attempt failed: origin does not point to the expected GitHub-Trending-KB repository"
            return 'Fatal'
        }

        Clear-StaleGitLocks
        Invoke-OriginFetch
        Clear-InterruptedGitOperations

        $target = Invoke-Git -GitArgs @("rev-parse", "origin/$Branch")
        $state = Get-LocalState -Target $target
        $upToDate = $state.Branch -eq $Branch -and $state.Head -eq $target -and -not $state.Semantic -and -not $state.WhitespaceOnly
        if ($upToDate) {
            $script:LastHead = $target.Substring(0, 7)
            Test-TodayReportPresent
            return $true
        }

        if ($state.Ahead -gt 0 -or $state.Semantic -or $state.Branch -ne $Branch -or $state.BlockingUntracked.Count -gt 0) {
            Save-LocalStateBackup -State $state -Target $target
        }
        if ($state.Branch -ne $Branch) {
            $null = Invoke-Git -GitArgs @("checkout", "-f", "-B", $Branch, "origin/$Branch")
        }
        $null = Invoke-Git -GitArgs @("reset", "--hard", "origin/$Branch")

        $head = Invoke-Git -GitArgs @("rev-parse", "HEAD")
        if ($head -ne $target) { throw "HEAD is $head after reset, expected $target" }
        if (Invoke-Git -GitArgs @("status", "--porcelain", "--untracked-files=no")) {
            throw "Tracked files remain dirty after reset; check .gitattributes"
        }
        $script:LastHead = $target.Substring(0, 7)
        $note = if ($state.WhitespaceOnly) { "; discarded whitespace-only local edits" } else { "" }
        Write-Log "OK: local vault mirrored to origin/$Branch at $($script:LastHead) (was $($state.Head.Substring(0, 7)))$note"
        Test-TodayReportPresent
        return $true
    }
    catch {
        Write-Log ("Attempt failed: " + $_.Exception.Message)
        return $false
    }
}

function Read-SyncStatus {
    try {
        if (Test-Path -LiteralPath $StatusFile) {
            return (Get-Content -LiteralPath $StatusFile -Raw -Encoding UTF8 | ConvertFrom-Json)
        }
    }
    catch { }
    return $null
}

function Write-SyncStatus([string]$Result, [string]$Message, [string]$LastFailureNotice) {
    try {
        $status = [ordered]@{
            time = (Get-Date -Format 'yyyy-MM-dd HH:mm:ss')
            result = $Result
            head = $script:LastHead
            message = $Message
            lastFailureNotice = $LastFailureNotice
            # Date whose daily report was confirmed present; later runs that day are skipped.
            reportDate = $script:ReportDate
        }
        New-Item -ItemType Directory -Path $AppDir -Force | Out-Null
        [IO.File]::WriteAllText($StatusFile, ($status | ConvertTo-Json), (New-Object System.Text.UTF8Encoding($false)))
    }
    catch { Write-Log ("Could not write status file: " + $_.Exception.Message) }
}

function Show-SyncNotification([string]$Title, [string]$Body) {
    try {
        $null = [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime]
        $null = [Windows.Data.Xml.Dom.XmlDocument, Windows.Data.Xml.Dom.XmlDocument, ContentType = WindowsRuntime]
        $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
        $xml.LoadXml(("<toast><visual><binding template='ToastGeneric'><text>{0}</text><text>{1}</text></binding></visual></toast>" -f
            [Security.SecurityElement]::Escape($Title), [Security.SecurityElement]::Escape($Body)))
        $appId = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\WindowsPowerShell\v1.0\powershell.exe'
        [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($appId).Show(
            (New-Object Windows.UI.Notifications.ToastNotification $xml))
    }
    catch { Write-Log ("Notification failed: " + $_.Exception.Message) }
}

function Start-ObsidianGitSync {
    param(
        [int]$AttemptLimit = $MaxAttempts,
        [int]$DelaySeconds = $RetryDelaySeconds,
        [scriptblock]$AttemptAction,
        [scriptblock]$DelayAction,
        [switch]$IgnoreDoneToday = $Force
    )

    if ($AttemptLimit -lt 1) { throw "AttemptLimit must be at least 1." }
    if ($DelaySeconds -lt 0) { throw "DelaySeconds cannot be negative." }
    if (-not $AttemptAction) { $AttemptAction = { Invoke-ObsidianGitSyncAttempt } }
    if (-not $DelayAction) { $DelayAction = { param($Seconds) Start-Sleep -Seconds $Seconds } }

    $mutex = New-Object System.Threading.Mutex($false, "Local\GitHubTrendingKBLocalSync")
    $ownsMutex = $false
    try {
        try { $ownsMutex = $mutex.WaitOne(0) }
        catch [System.Threading.AbandonedMutexException] { $ownsMutex = $true }
        if (-not $ownsMutex) {
            Write-Log "Another sync instance is already running; this trigger is ignored"
            return $true
        }

        $previous = Read-SyncStatus
        $today = Get-Date -Format 'yyyy-MM-dd'
        if (-not $IgnoreDoneToday -and $previous -and $previous.result -eq 'ok' -and [string]$previous.reportDate -eq $today) {
            # Today's update already landed; stay silent until tomorrow's first run.
            return $true
        }

        Invoke-LogRotation
        $script:BackupNotice = $null
        $script:LastHead = $null
        $script:ReportDate = $null
        $previousNotice = if ($previous -and $previous.lastFailureNotice) { [string]$previous.lastFailureNotice } else { "" }

        for ($attempt = 1; $attempt -le $AttemptLimit; $attempt++) {
            $outcome = $false
            try { $outcome = @(& $AttemptAction)[-1] }
            catch { Write-Log ("Attempt failed: " + $_.Exception.Message) }
            if ($outcome -is [string] -and $outcome -eq 'Fatal') {
                Write-Log "ERROR: sync stopped on attempt $attempt; the error is not retryable"
                break
            }
            if ($outcome -eq $true) {
                if ($attempt -gt 1) { Write-Log "Sync run completed successfully on attempt $attempt" }
                if ($script:ReportDate -and [string]$previous.reportDate -ne $script:ReportDate) {
                    Write-Log "OK: today's report ($($script:ReportDate)) is in the local vault; remaining runs today are skipped"
                }
                Write-SyncStatus -Result "ok" -Message "attempt $attempt" -LastFailureNotice ""
                if ($script:BackupNotice) {
                    Show-SyncNotification "GitHub-Trending-KB 已同步" "本地独有的改动已备份后以 GitHub 为准覆盖：$($script:BackupNotice)"
                }
                return $true
            }
            if ($attempt -lt $AttemptLimit) {
                Write-Log "Attempt $attempt of $AttemptLimit failed; waiting $DelaySeconds seconds before retry"
                & $DelayAction $DelaySeconds
            }
        }

        Write-Log "ERROR: sync run failed; local vault left unchanged until the next hourly run"
        $notice = $previousNotice
        $due = $true
        if ($previousNotice) {
            try { $due = ((Get-Date) - [datetime]::ParseExact($previousNotice, 'yyyy-MM-dd HH:mm:ss', $null)).TotalHours -ge $FailureNotifyHours }
            catch { $due = $true }
        }
        if ($due) {
            Show-SyncNotification "GitHub-Trending-KB 同步失败" "本地知识图谱未能从 GitHub 更新，详情见 $LogFile"
            $notice = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
        }
        Write-SyncStatus -Result "failed" -Message "see sync.log" -LastFailureNotice $notice
        return $false
    }
    finally {
        if ($ownsMutex) { $mutex.ReleaseMutex() }
        $mutex.Dispose()
    }
}

if ($MyInvocation.InvocationName -ne ".") {
    if (Start-ObsidianGitSync) { exit 0 }
    exit 1
}
