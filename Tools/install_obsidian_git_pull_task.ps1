param(
    [string]$VaultPath = "D:\gs\GitHub-Trending-KB",
    [string]$DailyAt = "09:30",
    [string]$TaskName = "GitHub-Trending-KB Local Sync"
)

$ErrorActionPreference = "Stop"
try { $DailyTime = [datetime]::ParseExact($DailyAt, "HH:mm", [Globalization.CultureInfo]::InvariantCulture) }
catch { throw "DailyAt must use 24-hour HH:mm format." }

$Source = Join-Path $PSScriptRoot "obsidian_git_pull.ps1"
if (-not (Test-Path -LiteralPath $Source)) { throw "Sync script not found: $Source" }
$AppDir = Join-Path $env:LOCALAPPDATA "GitHub-Trending-KB"
New-Item -ItemType Directory -Path $AppDir -Force | Out-Null
$Installed = Join-Path $AppDir "obsidian_git_pull.ps1"
$BackupDir = Join-Path $AppDir ("artifacts\task-backups\" + (Get-Date -Format "yyyyMMdd-HHmmss"))
New-Item -ItemType Directory -Path $BackupDir -Force | Out-Null
$InstalledBackup = Join-Path $BackupDir "obsidian_git_pull.ps1"
$TaskBackup = Join-Path $BackupDir "scheduled-task.xml"
$HadInstalledScript = Test-Path -LiteralPath $Installed
$HadTask = $null -ne (Get-ScheduledTask -TaskName $TaskName -ErrorAction SilentlyContinue)
if ($HadInstalledScript) { Copy-Item -LiteralPath $Installed -Destination $InstalledBackup -Force }
if ($HadTask) {
    $TaskXml = Export-ScheduledTask -TaskName $TaskName -ErrorAction Stop
    [IO.File]::WriteAllText($TaskBackup, $TaskXml, (New-Object Text.UTF8Encoding($false)))
    if (-not ([xml](Get-Content -LiteralPath $TaskBackup -Raw -Encoding UTF8)).Task) {
        throw "Scheduled task backup verification failed."
    }
}
$PowerShell = Join-Path $PSHOME "powershell.exe"
$ImmediateArgs = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $Installed, '-VaultPath', $VaultPath)
$RunKey = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run'
$RunName = 'GitHubTrendingKBLocalSync'
$Arguments = '-NoProfile -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File "{0}" -VaultPath "{1}"' -f $Installed, $VaultPath
try {
    Copy-Item -LiteralPath $Source -Destination $Installed -Force
    $Action = New-ScheduledTaskAction -Execute $PowerShell -Argument $Arguments
    $DailyTrigger = New-ScheduledTaskTrigger -Daily -At $DailyTime
    $Settings = New-ScheduledTaskSettingsSet -StartWhenAvailable `
        -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries `
        -ExecutionTimeLimit (New-TimeSpan -Minutes 45) -MultipleInstances IgnoreNew
    Register-ScheduledTask -TaskName $TaskName -Action $Action `
        -Trigger $DailyTrigger -Settings $Settings `
        -Description "Sync GitHub-Trending-KB origin/main to the read-only Obsidian vault" `
        -Force -ErrorAction Stop | Out-Null
}
catch {
    $ConfigurationError = $_.Exception.Message
    try {
        if ($HadTask) {
            Register-ScheduledTask -TaskName $TaskName `
                -Xml (Get-Content -LiteralPath $TaskBackup -Raw -Encoding UTF8) -Force | Out-Null
        }
        else { Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false -ErrorAction SilentlyContinue }
        if ($HadInstalledScript) { Copy-Item -LiteralPath $InstalledBackup -Destination $Installed -Force }
        elseif (Test-Path -LiteralPath $Installed) { Remove-Item -LiteralPath $Installed -Force }
    }
    catch { throw "Installation failed ($ConfigurationError), and rollback also failed: $($_.Exception.Message)" }
    throw "Installation failed and the previous configuration was restored: $ConfigurationError"
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
    Write-Warning "Daily task is installed, but the immediate three-attempt sync failed. Inspect $AppDir\sync.log"
    exit 1
}
Write-Host "Local sync installed via Task Scheduler (daily at $DailyAt; three attempts per run)"
Write-Host "Local vault is synced. Log: $AppDir\sync.log"
