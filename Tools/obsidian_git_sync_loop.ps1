param(
    [string]$VaultPath = "D:\gs\GitHub-Trending-KB",
    [int]$EveryMinutes = 30,
    [int]$ResumePollSeconds = 15
)

$ErrorActionPreference = "Stop"
function Write-GitHubTrendingKBLoopLog {
    param(
        [Parameter(Mandatory = $true)][string]$LogFile,
        [Parameter(Mandatory = $true)][string]$Message
    )

    New-Item -ItemType Directory -Path (Split-Path $LogFile -Parent) -Force | Out-Null
    "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] $Message" |
        Out-File -LiteralPath $LogFile -Append -Encoding utf8
}

function Invoke-GitHubTrendingKBSync {
    param(
        [Parameter(Mandatory = $true)][string]$PowerShell,
        [Parameter(Mandatory = $true)][string]$SyncScript,
        [Parameter(Mandatory = $true)][string]$VaultPath,
        [Parameter(Mandatory = $true)][string]$LogFile
    )

    try {
        & $PowerShell -NoProfile -NonInteractive -ExecutionPolicy Bypass `
            -File $SyncScript -VaultPath $VaultPath *> $null
        $exitCode = $LASTEXITCODE
        if ($exitCode -ne 0) {
            Write-GitHubTrendingKBLoopLog -LogFile $LogFile `
                -Message "Sync child failed with exit code $exitCode; loop will continue"
            return $false
        }
        return $true
    }
    catch {
        Write-GitHubTrendingKBLoopLog -LogFile $LogFile `
            -Message ("Sync child raised an error; loop will continue: " + $_.Exception.Message)
        return $false
    }
}

function Wait-GitHubTrendingKBSync {
    param(
        [Parameter(Mandatory = $true)][datetime]$Deadline,
        [string]$SourceIdentifier,
        [int]$PollSeconds = 15
    )

    if ($PollSeconds -lt 1) { throw "PollSeconds must be at least 1." }

    while ((Get-Date) -lt $Deadline) {
        $remainingSeconds = [Math]::Max(1, [Math]::Ceiling(($Deadline - (Get-Date)).TotalSeconds))
        $timeoutSeconds = [Math]::Min($PollSeconds, $remainingSeconds)

        if ($SourceIdentifier) {
            $powerEvent = Wait-Event -SourceIdentifier $SourceIdentifier `
                -Timeout $timeoutSeconds -ErrorAction SilentlyContinue
            if ($powerEvent) {
                $isResume = $powerEvent.MessageData -eq "Resume"
                if ($powerEvent.SourceEventArgs -and
                    $powerEvent.SourceEventArgs.Mode -eq [Microsoft.Win32.PowerModes]::Resume) {
                    $isResume = $true
                }
                Remove-Event -EventIdentifier $powerEvent.EventIdentifier -ErrorAction SilentlyContinue
                if ($isResume) { return "Resume" }
            }
        }
        else {
            Start-Sleep -Seconds $timeoutSeconds
        }
    }

    return "Interval"
}

function Start-GitHubTrendingKBSyncLoop {
    param(
        [Parameter(Mandatory = $true)][string]$VaultPath,
        [Parameter(Mandatory = $true)][int]$EveryMinutes,
        [int]$ResumePollSeconds = 15
    )

    if ($EveryMinutes -lt 5) { throw "EveryMinutes must be at least 5." }
    if ($ResumePollSeconds -lt 1) { throw "ResumePollSeconds must be at least 1." }

    $syncScript = Join-Path $PSScriptRoot "obsidian_git_pull.ps1"
    $powerShell = Join-Path $PSHOME "powershell.exe"
    $appDir = Join-Path $env:LOCALAPPDATA "GitHub-Trending-KB"
    $loopLog = Join-Path $appDir "loop.log"
    $mutex = [System.Threading.Mutex]::new($false, "Local\GitHubTrendingKBLocalSync")
    $ownsMutex = $false
    $loopStarted = $false
    $powerEventRegistered = $false
    $sourceIdentifier = "GitHubTrendingKB.PowerModeChanged.$PID"

    try {
        try {
            $ownsMutex = $mutex.WaitOne(0)
        }
        catch [System.Threading.AbandonedMutexException] {
            $ownsMutex = $true
            Write-GitHubTrendingKBLoopLog -LogFile $loopLog `
                -Message "Recovered an abandoned single-instance mutex"
        }

        if (-not $ownsMutex) { return }
        $loopStarted = $true
        Write-GitHubTrendingKBLoopLog -LogFile $loopLog `
            -Message "Loop started for $VaultPath; interval=$EveryMinutes minutes"

        try {
            Register-ObjectEvent -InputObject ([Microsoft.Win32.SystemEvents]) `
                -EventName PowerModeChanged -SourceIdentifier $sourceIdentifier | Out-Null
            $powerEventRegistered = $true
            Write-GitHubTrendingKBLoopLog -LogFile $loopLog `
                -Message "Power resume monitoring enabled"
        }
        catch {
            Write-GitHubTrendingKBLoopLog -LogFile $loopLog `
                -Message ("Power resume monitoring unavailable; wall-clock recovery remains active: " + $_.Exception.Message)
        }

        $reason = "Startup"
        while ($true) {
            Write-GitHubTrendingKBLoopLog -LogFile $loopLog -Message "Sync trigger: $reason"
            $null = Invoke-GitHubTrendingKBSync -PowerShell $powerShell `
                -SyncScript $syncScript -VaultPath $VaultPath -LogFile $loopLog

            $waitParameters = @{
                Deadline = (Get-Date).AddMinutes($EveryMinutes)
                PollSeconds = $ResumePollSeconds
            }
            if ($powerEventRegistered) {
                $waitParameters.SourceIdentifier = $sourceIdentifier
            }
            $reason = Wait-GitHubTrendingKBSync @waitParameters
        }
    }
    finally {
        if ($powerEventRegistered) {
            Unregister-Event -SourceIdentifier $sourceIdentifier -ErrorAction SilentlyContinue
            Get-Event -SourceIdentifier $sourceIdentifier -ErrorAction SilentlyContinue |
                Remove-Event -ErrorAction SilentlyContinue
        }
        if ($ownsMutex) { $mutex.ReleaseMutex() }
        $mutex.Dispose()
        if ($loopStarted) {
            Write-GitHubTrendingKBLoopLog -LogFile $loopLog -Message "Loop stopped"
        }
    }
}

if ($MyInvocation.InvocationName -ne ".") {
    if ($EveryMinutes -lt 5 -or $ResumePollSeconds -lt 1) { exit 2 }
    Start-GitHubTrendingKBSyncLoop -VaultPath $VaultPath `
        -EveryMinutes $EveryMinutes -ResumePollSeconds $ResumePollSeconds
}
