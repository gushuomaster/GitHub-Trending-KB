param(
    [string]$TaskName = "GitHub-Trending-KB Local Sync"
)

$task = Get-ScheduledTask -TaskName $TaskName -ErrorAction SilentlyContinue
if ($null -eq $task) {
    Write-Host "未找到计划任务: $TaskName"
    exit 0
}

Unregister-ScheduledTask -TaskName $TaskName -Confirm:$false
Write-Host "已删除计划任务: $TaskName"
