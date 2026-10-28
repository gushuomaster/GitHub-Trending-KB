param(
    [string]$VaultPath = "D:\gs\GitHub-Trending-KB",
    [int]$EveryMinutes = 30,
    [string]$TaskName = "GitHub-Trending-KB Local Sync"
)

$ErrorActionPreference = "Stop"
if ($EveryMinutes -lt 5) { throw "Sync interval must be at least 5 minutes." }

$Source = Join-Path $PSScriptRoot "obsidian_git_pull.ps1"
if (-not (Test-Path -LiteralPath $Source)) { throw "Sync script not found: $Source" }
$AppDir = Join-Path $env:LOCALAPPDATA "GitHub-Trending-KB"
New-Item -ItemType Directory -Path $AppDir -Force | Out-Null
$Installed = Join-Path $AppDir "obsidian_git_pull.ps1"
Copy-Item -LiteralPath $Source -Destination $Installed -Force
$PowerShell = Join-Path $PSHOME "powershell.exe"
$ImmediateArgs = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $Installed, '-VaultPath', $VaultPath)
$RunKey = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'
$RunName = 'GitHubTrendingKBLocalSync'
$Arguments = '-NoProfile -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "{0}" -VaultPath "{1}"' -f $Installed, $VaultPath
try {
    $Action = New-ScheduledTaskAction -Execute $PowerShell -Argument $Arguments
    # A standard user can register a repeating trigger here, but an AtLogOn
    # trigger returns Access Denied. The repeating task survives process exits.
    $RepeatTrigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(2) `
        -RepetitionInterval (New-TimeSpan -Minutes $EveryMinutes)
    $Settings = New-ScheduledTaskSettingsSet -StartWhenAvailable `
        -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries `
        -ExecutionTimeLimit (New-TimeSpan -Minutes 10) -MultipleInstances IgnoreNew
    Register-ScheduledTask -TaskName $TaskName -Action $Action `
        -Trigger $RepeatTrigger -Settings $Settings `
        -Description "Sync GitHub-Trending-KB origin/main to the read-only Obsidian vault" `
        -Force -ErrorAction Stop | Out-Null
}
catch {
    throw "Recurring task registration failed: $($_.Exception.Message)"
}
Remove-ItemProperty -Path $RunKey -Name $RunName -ErrorAction SilentlyContinue

@(
    "Obsidian GitHub-Trending-KB Auto Pull",
    "GitHub-Trending-KB Auto Sync",
    "GitHub 热门项目日报 - Obsidian 本地同步",
    "GitHub-Trending-KB Daily Sync"
) | Where-Object { $_ -ne $TaskName } | ForEach-Object {
    Unregister-ScheduledTask -TaskName $_ -Confirm:$false -ErrorAction SilentlyContinue
}

& $PowerShell @ImmediateArgs
if ($LASTEXITCODE -ne 0) {
    Write-Warning "Recurring task is installed, but immediate sync failed. It will retry every $EveryMinutes minutes. Inspect $AppDir\sync.log"
    exit 1
}
Write-Host "Local sync installed via Task Scheduler (every $EveryMinutes minutes)"
Write-Host "Local vault is synced. Log: $AppDir\sync.log"
