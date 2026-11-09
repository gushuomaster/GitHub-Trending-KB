$ErrorActionPreference = 'Stop'
$Installer = Join-Path (Split-Path $PSScriptRoot -Parent) 'install_obsidian_git_pull_task.ps1'
$Source = [IO.File]::ReadAllText($Installer, [Text.Encoding]::UTF8)

function Assert-Matches([string]$Pattern, [string]$Message) {
    if ($Source -notmatch $Pattern) { throw $Message }
}

function Assert-DoesNotMatch([string]$Pattern, [string]$Message) {
    if ($Source -match $Pattern) { throw $Message }
}

Assert-Matches '\[string\]\$DailyAt\s*=\s*"09:30"' 'Default trigger must be daily at 09:30'
Assert-Matches 'New-ScheduledTaskTrigger\s+-Daily\s+-At' 'Installer must create a daily trigger'
Assert-DoesNotMatch 'New-ScheduledTaskTrigger\s+-Once' 'Installer must not create a repeating interval trigger'
Assert-DoesNotMatch 'RepetitionInterval' 'Installer must not configure scheduler-level repetitions'
Assert-Matches 'New-ScheduledTaskSettingsSet\s+-StartWhenAvailable' 'StartWhenAvailable must be enabled'
Assert-Matches '-ExecutionTimeLimit\s+\(New-TimeSpan\s+-Minutes\s+45\)' 'Execution limit must be 45 minutes'
Assert-Matches '-MultipleInstances\s+IgnoreNew' 'Overlapping task instances must be ignored'
Assert-DoesNotMatch 'RestartCount|RestartInterval' 'Retries must be owned by the sync script, not Task Scheduler'
Assert-Matches 'task-backups' 'Installer must preserve backups before replacing configuration'
Assert-Matches 'Register-ScheduledTask[\s\S]*?-Xml\s+\(Get-Content\s+-LiteralPath\s+\$TaskBackup' 'Installer must be able to restore the previous task XML'
Assert-Matches 'Copy-Item\s+-LiteralPath\s+\$InstalledBackup' 'Installer must be able to restore the installed script'

Write-Host 'PASS: scheduled-task installer configuration contract tests'
