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

function Get-WindowsSystemProxy {
    try {
        $settings = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' -ErrorAction Stop
        if ($settings.ProxyEnable -ne 1 -or -not $settings.ProxyServer) { return $null }
        $raw = [string]$settings.ProxyServer
        $scheme = 'http://'
        if ($raw -match '(?i)(?:^|;)https=([^;]+)') { $target = $Matches[1] }
        elseif ($raw -match '(?i)(?:^|;)http=([^;]+)') { $target = $Matches[1] }
        elseif ($raw -match '(?i)(?:^|;)socks=([^;]+)') {
            $target = $Matches[1]
            $scheme = 'socks5h://'
        }
        elseif ($raw -notmatch '=') { $target = $raw }
        else { return $null }
        if ($target -match '^[a-z]+://') { return $target }
        return "$scheme$target"
    }
    catch { return $null }
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
    try {
        $null = Invoke-Git -GitArgs @("fetch", "origin", $Branch)
    }
    catch {
        $connected = $false
        $systemProxy = Get-WindowsSystemProxy
        if ($systemProxy) {
            Write-Log "Configured connection failed; trying current Windows system proxy"
            try {
                $null = Invoke-Git -GitArgs @("-c", "remote.origin.proxy=$systemProxy", "fetch", "origin", $Branch)
                $null = Invoke-Git -GitArgs @("config", "--local", "remote.origin.proxy", $systemProxy)
                Write-Log "OK: origin now follows the verified Windows system proxy"
                $connected = $true
            }
            catch { Write-Log "Current Windows system proxy did not connect" }
        }
        if (-not $connected) {
            Write-Log "Trying origin without a proxy (also supports Clash TUN mode)"
            $null = Invoke-Git -GitArgs @("-c", "remote.origin.proxy=", "fetch", "origin", $Branch)
            $null = Invoke-Git -GitArgs @("config", "--local", "remote.origin.proxy", "")
            Write-Log "OK: origin connected without an explicit Git proxy"
        }
    }
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
