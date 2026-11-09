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

function Assert-Git([string[]]$Arguments) {
    $PreviousPreference = $ErrorActionPreference
    try {
        $ErrorActionPreference = 'Continue'
        $null = & $GitExe -C $FixtureDir @Arguments 2>&1 | Out-String
    }
    finally { $ErrorActionPreference = $PreviousPreference }
    if ($LASTEXITCODE -ne 0) { throw "Fixture git $($Arguments[0]) failed" }
}

try {
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
    Assert-Git -Arguments @('-c', 'user.name=Sync Test', '-c', 'user.email=sync-test@example.invalid', 'commit', '-m', 'fixture')
    [IO.File]::SetLastWriteTimeUtc($Jsonl, (Get-Date).ToUniversalTime().AddSeconds(2))

    $VaultPath = $FixtureDir
    $script:GitExe = $GitExe
    $Quoted = Invoke-GitResult -GitArgs @('-c', 'user.name=Sync Test', 'config', '--get', 'user.name')
    if ($Quoted.ExitCode -ne 0 -or $Quoted.Output -ne 'Sync Test') {
        throw 'Native argument quoting failed for a value containing spaces'
    }
    $WarningResult = Invoke-GitResult -GitArgs @('diff', '--ignore-space-at-eol', '--quiet', '--', 'Index/projects.jsonl')
    if ($WarningResult.ExitCode -ne 0) {
        throw "EOL-only diff should exit 0: $($WarningResult.Error)"
    }
    if ($WarningResult.Error -notmatch 'CRLF') {
        throw 'Expected Git warning on stderr to be captured'
    }
    if ($WarningResult.Output) { throw 'Git warning must not be mistaken for stdout' }

    [IO.File]::WriteAllText((Join-Path $FixtureDir '.gitattributes'), "*.jsonl -text`n", $Utf8)
    $Status = Invoke-Git -GitArgs @('status', '--short', '--', 'Index/projects.jsonl')
    if ($Status) { throw 'Disabling JSONL normalization should clear the phantom change' }

    [IO.File]::WriteAllText($Jsonl, "{`"id`":3}`r`n{`"id`":2}`n", $Utf8)
    $Changed = Invoke-GitResult -GitArgs @('diff', '--ignore-space-at-eol', '--quiet', '--', 'Index/projects.jsonl')
    if ($Changed.ExitCode -ne 1) { throw 'Semantic edits must still be detected' }

    $AttemptCount = 0
    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -AttemptAction { $script:AttemptCount++; return $true } `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    if (-not $Succeeded -or $AttemptCount -ne 1 -or $Waits.Count -ne 0) {
        throw 'A successful first attempt must not retry or wait'
    }

    $AttemptCount = 0
    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -AttemptAction { $script:AttemptCount++; return ($script:AttemptCount -eq 3) } `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    if (-not $Succeeded -or $AttemptCount -ne 3) {
        throw 'A third-attempt success must run the complete attempt action three times'
    }
    if ($Waits.Count -ne 2 -or $Waits[0] -ne 600 -or $Waits[1] -ne 600) {
        throw 'Retries must wait exactly twice using the configured delay'
    }

    $AttemptCount = 0
    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -AttemptAction { $script:AttemptCount++; return $false } `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    if ($Succeeded -or $AttemptCount -ne 3 -or $Waits.Count -ne 2) {
        throw 'An exhausted run must fail after exactly three attempts and two waits'
    }

    # Exercise the real attempt body with deterministic Git/network doubles. The
    # first two attempts fail every fetch path; the third succeeds immediately.
    $RemoteChecks = 0
    $SystemProxyChecks = 0
    $ClashChecks = 0
    function Invoke-Git([string[]]$GitArgs) {
        if ($GitArgs[0] -eq 'remote') {
            $script:RemoteChecks++
            return 'https://github.com/gushuomaster/GitHub-Trending-KB.git'
        }
        $IsFetch = $GitArgs[0] -eq 'fetch' -or $GitArgs -contains 'fetch'
        if ($IsFetch -and $script:RemoteChecks -lt 3) { throw 'simulated network unavailable' }
        if ($GitArgs[0] -eq 'rev-parse') { return 'abc1234' }
        return ''
    }
    function Get-WindowsSystemProxy {
        $script:SystemProxyChecks++
        return $null
    }
    function Get-ClashProxyCandidates {
        $script:ClashChecks++
        return
    }

    $Waits = @()
    $Succeeded = Start-ObsidianGitSync -AttemptLimit 3 -DelaySeconds 600 `
        -DelayAction { param($Seconds) $script:Waits += $Seconds }
    if (-not $Succeeded -or $RemoteChecks -ne 3) {
        throw 'Each retry must execute the complete sync attempt from origin validation'
    }
    if ($SystemProxyChecks -ne 2 -or $ClashChecks -ne 2) {
        throw 'Each failed attempt must rerun Windows and Clash proxy discovery'
    }
    if ($Waits.Count -ne 2) {
        throw 'Network recovery must retain exactly two injected retry waits'
    }
    Write-Host 'PASS: Git warning, EOL attribute, and semantic-change regression tests'
    Write-Host 'PASS: retry controller regression tests'
    Write-Host 'PASS: full network rediscovery regression tests'
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
            Remove-Item -LiteralPath $ResolvedTestRoot -Recurse -Force
        }
    }
    finally {
        $env:LOCALAPPDATA = $OriginalLocalAppData
    }
}
