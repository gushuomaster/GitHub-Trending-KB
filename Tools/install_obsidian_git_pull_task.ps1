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
$LoopSource = Join-Path $PSScriptRoot "obsidian_git_sync_loop.ps1"
if (-not (Test-Path -LiteralPath $LoopSource)) { throw "Fallback loop script not found: $LoopSource" }
$InstalledLoop = Join-Path $AppDir "obsidian_git_sync_loop.ps1"
Copy-Item -LiteralPath $LoopSource -Destination $InstalledLoop -Force

$PowerShell = Join-Path $PSHOME "powershell.exe"
$ImmediateArgs = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $Installed, '-VaultPath', $VaultPath)
& $PowerShell @ImmediateArgs
if ($LASTEXITCODE -ne 0) {
    throw "Immediate sync failed; task was not registered. Inspect $AppDir\sync.log"
}

$RunKey = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'
$RunName = 'GitHubTrendingKBLocalSync'
$Arguments = '-NoProfile -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "{0}" -VaultPath "{1}"' -f $Installed, $VaultPath
try {
    $Action = New-ScheduledTaskAction -Execute $PowerShell -Argument $Arguments
    $LogonTrigger = New-ScheduledTaskTrigger -AtLogOn
    $RepeatTrigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(2) `
        -RepetitionInterval (New-TimeSpan -Minutes $EveryMinutes)
    $Settings = New-ScheduledTaskSettingsSet -StartWhenAvailable `
        -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
    Register-ScheduledTask -TaskName $TaskName -Action $Action `
        -Trigger @($LogonTrigger, $RepeatTrigger) -Settings $Settings `
        -Description "Sync GitHub-Trending-KB origin/main to the read-only Obsidian vault" `
        -Force | Out-Null
    Remove-ItemProperty -Path $RunKey -Name $RunName -ErrorAction SilentlyContinue
    $Mode = 'Task Scheduler'
}
catch {
    # Standard users may be denied permission to register a Windows task.
    # HKCU Run starts one hidden user process at sign-in, without elevation.
    $LoopArguments = '-NoProfile -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "{0}" -VaultPath "{1}" -EveryMinutes {2}' -f $InstalledLoop, $VaultPath, $EveryMinutes
    New-Item -Path $RunKey -Force | Out-Null
    New-ItemProperty -Path $RunKey -Name $RunName -PropertyType String `
        -Value ('"{0}" {1}' -f $PowerShell, $LoopArguments) -Force | Out-Null
    Start-Process -FilePath $PowerShell -ArgumentList $LoopArguments -WindowStyle Hidden
    $Mode = 'User sign-in startup'
}

@(
    "Obsidian GitHub-Trending-KB Auto Pull",
    "GitHub-Trending-KB Auto Sync",
    "GitHub 热门项目日报 - Obsidian 本地同步",
    "GitHub-Trending-KB Daily Sync"
) | Where-Object { $_ -ne $TaskName } | ForEach-Object {
    Unregister-ScheduledTask -TaskName $_ -Confirm:$false -ErrorAction SilentlyContinue
}

Write-Host "Local sync installed via $Mode (every $EveryMinutes minutes and at sign-in)"
Write-Host "Local vault is synced. Log: $AppDir\sync.log"
