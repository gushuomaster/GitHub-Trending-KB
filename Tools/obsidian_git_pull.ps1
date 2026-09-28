param(
    [string]$VaultPath = "D:\gs\GitHub-Trending-KB",
    [string]$Branch = "main"
)

$ErrorActionPreference = "Stop"
$AppDir = Join-Path $env:LOCALAPPDATA "GitHub-Trending-KB"
$LogFile = Join-Path $AppDir "sync.log"

function Write-Log([string]$Message) {
    New-Item -ItemType Directory -Path $AppDir -Force | Out-Null
    "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] $Message" |
        Out-File -LiteralPath $LogFile -Append -Encoding utf8
}

function Invoke-Git([string[]]$GitArgs) {
    # Windows PowerShell 5.1 can turn native stderr into an error record.
    # Check Git's process exit code instead of treating normal fetch output as a failure.
    $previousPreference = $ErrorActionPreference
    try {
        $ErrorActionPreference = "Continue"
        $output = & $script:GitExe -C $VaultPath @GitArgs 2>&1 | Out-String
        $exitCode = $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = $previousPreference
    }
    if ($exitCode -ne 0) {
        throw "git $($GitArgs[0]) failed with exit code $exitCode"
    }
    return $output.Trim()
}

try {
    if (-not (Test-Path -LiteralPath (Join-Path $VaultPath ".git"))) {
        throw "Vault is not a Git repository: $VaultPath"
    }
    $script:GitExe = (Get-Command git -ErrorAction Stop).Source
    $remote = Invoke-Git -GitArgs @("remote", "get-url", "origin")
    if ($remote -notmatch '(?i)^(?:https://(?:[^/@]+@)?github\.com/|git@github\.com:|ssh://git@github\.com/)gushuomaster/GitHub-Trending-KB(?:\.git)?/?$') {
        throw "origin does not point to the expected GitHub-Trending-KB repository"
    }

    Write-Log "Starting sync for $VaultPath"
    $null = Invoke-Git -GitArgs @("fetch", "origin", $Branch)
    # The vault is read-only; GitHub main is the single source of truth.
    $null = Invoke-Git -GitArgs @("reset", "--hard", "origin/$Branch")
    $head = Invoke-Git -GitArgs @("rev-parse", "--short", "HEAD")
    Write-Log "OK: local vault synced to origin/$Branch at $head"
    exit 0
}
catch {
    Write-Log ("ERROR: " + $_.Exception.Message)
    exit 1
}
