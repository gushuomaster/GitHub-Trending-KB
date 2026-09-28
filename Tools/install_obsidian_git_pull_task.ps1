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
& $PowerShell @ImmediateArgs
if ($LASTEXITCODE -ne 0) {
    throw "Immediate sync failed; task was not registered. Inspect $AppDir\sync.log"
}

$Arguments = '-NoProfile -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "{0}" -VaultPath "{1}"' -f $Installed, $VaultPath
$Action = New-ScheduledTaskAction -Execute $PowerShell -Argument $Arguments
$LogonTrigger = New-ScheduledTaskTrigger -AtLogOn
$RepeatTrigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(2) `
    -RepetitionInterval (New-TimeSpan -Minutes $EveryMinutes)
$Settings = New-ScheduledTaskSettingsSet -StartWhenAvailable `
    -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
$Principal = New-ScheduledTaskPrincipal `
    -UserId ([Security.Principal.WindowsIdentity]::GetCurrent().Name) `
    -LogonType Interactive -RunLevel Limited

Register-ScheduledTask -TaskName $TaskName -Action $Action `
    -Trigger @($LogonTrigger, $RepeatTrigger) -Settings $Settings `
    -Principal $Principal -Description "Sync GitHub-Trending-KB origin/main to the read-only Obsidian vault" `
    -Force | Out-Null

@(
    "Obsidian GitHub-Trending-KB Auto Pull",
    "GitHub-Trending-KB Auto Sync",
    "GitHub 热门项目日报 - Obsidian 本地同步",
    "GitHub-Trending-KB Daily Sync"
) | Where-Object { $_ -ne $TaskName } | ForEach-Object {
    Unregister-ScheduledTask -TaskName $_ -Confirm:$false -ErrorAction SilentlyContinue
}

Write-Host "Scheduled task installed: $TaskName (every $EveryMinutes minutes and at logon)"
Write-Host "Local vault is synced. Log: $AppDir\sync.log"
