$ErrorActionPreference = 'Stop'
$Installer = Join-Path (Split-Path $PSScriptRoot -Parent) 'install_obsidian_git_pull_task.ps1'
$Source = [IO.File]::ReadAllText($Installer, [Text.Encoding]::UTF8)

function Assert-Matches([string]$Pattern, [string]$Message) {
    if ($Source -notmatch $Pattern) { throw $Message }
}

function Assert-DoesNotMatch([string]$Pattern, [string]$Message) {
    if ($Source -match $Pattern) { throw $Message }
}

$Bytes = [IO.File]::ReadAllBytes($Installer)
$HasBom = $Bytes.Length -ge 3 -and $Bytes[0] -eq 0xEF -and $Bytes[1] -eq 0xBB -and $Bytes[2] -eq 0xBF
$IsAscii = -not ($Bytes | Where-Object { $_ -gt 0x7F } | Select-Object -First 1)
if (-not ($HasBom -or $IsAscii)) { throw 'Installer contains non-ASCII legacy task names and must be saved as UTF-8 with BOM' }

Assert-Matches '\[int\]\$IntervalMinutes\s*=\s*60' 'Default trigger must repeat every 60 minutes'
Assert-Matches 'New-ScheduledTaskTrigger\s+-Once[\s\S]*?-RepetitionInterval\s+\(New-TimeSpan\s+-Minutes\s+\$IntervalMinutes\)' 'Installer must create an hourly repeating trigger'
Assert-DoesNotMatch 'RepetitionDuration' 'Repetition must be indefinite'
Assert-DoesNotMatch 'New-ScheduledTaskTrigger\s+-AtLogOn' 'AtLogOn triggers are denied to standard users and must not be used'
Assert-Matches 'Repetition\.Interval' 'Installer must verify the registered repetition'
Assert-Matches 'New-ScheduledTaskSettingsSet\s+-StartWhenAvailable' 'StartWhenAvailable must be enabled'
Assert-Matches '-ExecutionTimeLimit\s+\(New-TimeSpan\s+-Minutes\s+45\)' 'Execution limit must be 45 minutes'
Assert-Matches '-MultipleInstances\s+IgnoreNew' 'Overlapping task instances must be ignored'
Assert-DoesNotMatch 'RestartCount|RestartInterval' 'Retries must be owned by the sync script, not Task Scheduler'
Assert-Matches 'task-backups' 'Installer must preserve backups before replacing configuration'
Assert-Matches 'Register-ScheduledTask[\s\S]*?-Xml\s+\(Get-Content\s+-LiteralPath\s+\$TaskBackup' 'Installer must be able to restore the previous task XML'
Assert-Matches 'Copy-Item\s+-LiteralPath\s+\$InstalledBackup' 'Installer must be able to restore the installed script'

Write-Host 'PASS: scheduled-task installer configuration contract tests'
