param(
    [string]$VaultPath = "D:\gs\GitHub-Trending-KB",
    [int]$EveryMinutes = 30
)

$ErrorActionPreference = "Stop"
if ($EveryMinutes -lt 5) { exit 2 }
$SyncScript = Join-Path $PSScriptRoot "obsidian_git_pull.ps1"
$PowerShell = Join-Path $PSHOME "powershell.exe"
$Mutex = New-Object System.Threading.Mutex($false, 'Local\GitHubTrendingKBLocalSync')

if (-not $Mutex.WaitOne(0)) {
    $Mutex.Dispose()
    exit 0
}

try {
    while ($true) {
        # Each run logs its own result; a failed fetch must not stop future attempts.
        & $PowerShell -NoProfile -NonInteractive -ExecutionPolicy Bypass `
            -File $SyncScript -VaultPath $VaultPath *> $null
        Start-Sleep -Seconds ($EveryMinutes * 60)
    }
}
finally {
    $Mutex.ReleaseMutex()
    $Mutex.Dispose()
}
