$ErrorActionPreference = "Stop"

$LoopScript = Join-Path (Split-Path $PSScriptRoot -Parent) "obsidian_git_sync_loop.ps1"
$Source = Get-Content -LiteralPath $LoopScript -Encoding UTF8 -Raw

foreach ($FunctionName in @(
    "Wait-GitHubTrendingKBSync",
    "Invoke-GitHubTrendingKBSync",
    "Start-GitHubTrendingKBSyncLoop"
)) {
    if ($Source -notmatch "function\s+$([regex]::Escape($FunctionName))") {
        throw "Expected function is missing: $FunctionName"
    }
}

. $LoopScript

$IntervalReason = Wait-GitHubTrendingKBSync `
    -Deadline (Get-Date).AddSeconds(-1) -PollSeconds 1
if ($IntervalReason -ne "Interval") {
    throw "Expected Interval, got: $IntervalReason"
}

$TestSourceIdentifier = "GitHubTrendingKB.Tests.Resume.$PID"
try {
    $null = New-Event -SourceIdentifier $TestSourceIdentifier -MessageData "Resume"
    $ResumeReason = Wait-GitHubTrendingKBSync `
        -Deadline (Get-Date).AddMinutes(1) `
        -SourceIdentifier $TestSourceIdentifier -PollSeconds 1
    if ($ResumeReason -ne "Resume") {
        throw "Expected Resume, got: $ResumeReason"
    }
}
finally {
    Get-Event -SourceIdentifier $TestSourceIdentifier -ErrorAction SilentlyContinue |
        Remove-Event -ErrorAction SilentlyContinue
}

$FixtureDir = Join-Path ([IO.Path]::GetTempPath()) "GitHub-Trending-KB-loop-tests-$PID"
$FixtureScript = Join-Path $FixtureDir "fail.ps1"
$FixtureLog = Join-Path $FixtureDir "loop.log"
try {
    New-Item -ItemType Directory -Path $FixtureDir -Force | Out-Null
    [IO.File]::WriteAllText(
        $FixtureScript,
        "exit 7`r`n",
        (New-Object System.Text.UTF8Encoding($false))
    )
    $Result = Invoke-GitHubTrendingKBSync `
        -PowerShell (Join-Path $PSHOME "powershell.exe") `
        -SyncScript $FixtureScript -VaultPath $FixtureDir -LogFile $FixtureLog
    if ($Result) {
        throw "A child sync exit code of 7 must return false."
    }
    if (-not (Select-String -LiteralPath $FixtureLog -Pattern "exit code 7" -Quiet)) {
        throw "The child sync failure was not logged."
    }
}
finally {
    Remove-Item -LiteralPath $FixtureDir -Recurse -Force -ErrorAction SilentlyContinue
}

Write-Host "PASS: sync loop regression tests"
