param(
    [string]$VaultPath = "D:\GitHub-Trending-KB",
    [int]$EveryMinutes = 30,
    [string]$TaskName = "Obsidian GitHub-Trending-KB Auto Pull"
)

$ErrorActionPreference = "Stop"
if ($EveryMinutes -lt 5) { throw "定时间隔至少 5 分钟。" }

$PullScript = Join-Path $VaultPath "Tools\obsidian_git_pull.ps1"
if (-not (Test-Path $PullScript)) { throw "未找到同步脚本: $PullScript" }

$PowerShell = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
$Action = New-ScheduledTaskAction -Execute $PowerShell `
    -Argument "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$PullScript`" -VaultPath `"$VaultPath`""

$LogonTrigger = New-ScheduledTaskTrigger -AtLogOn
$Start = (Get-Date).AddMinutes(2)
$RepeatTrigger = New-ScheduledTaskTrigger -Once -At $Start `
    -RepetitionInterval (New-TimeSpan -Minutes $EveryMinutes)

$Settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries -StartWhenAvailable

Register-ScheduledTask -TaskName $TaskName -Action $Action `
    -Trigger @($LogonTrigger, $RepeatTrigger) -Settings $Settings `
    -Description "自动同步 Obsidian Vault 的 GitHub-Trending-KB 仓库" -Force | Out-Null

Write-Host "已创建计划任务: $TaskName"
Write-Host "Vault: $VaultPath"
Write-Host "间隔: 每 $EveryMinutes 分钟"
