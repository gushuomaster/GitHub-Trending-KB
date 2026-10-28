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

function Invoke-GitResult([string[]]$GitArgs) {
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
    return [pscustomobject]@{ ExitCode = $exitCode; Output = $output.Trim() }
}

function Invoke-Git([string[]]$GitArgs) {
    $result = Invoke-GitResult -GitArgs $GitArgs
    if ($result.ExitCode -ne 0) {
        throw "git $($GitArgs[0]) failed with exit code $($result.ExitCode): $($result.Output)"
    }
    return $result.Output
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

function Get-ClashProxyCandidates {
    try {
        $clashProcessIds = @(Get-Process -ErrorAction SilentlyContinue |
            Where-Object { $_.ProcessName -match '(?i)clash|mihomo' } |
            Select-Object -ExpandProperty Id)
        if ($clashProcessIds.Count -eq 0) { return }
        $ports = @(Get-NetTCPConnection -State Listen -ErrorAction SilentlyContinue |
            Where-Object { $clashProcessIds -contains $_.OwningProcess -and $_.LocalPort -gt 1024 } |
            Select-Object -ExpandProperty LocalPort -Unique | Select-Object -First 10)
        foreach ($port in $ports) {
            "http://127.0.0.1:$port"
            "socks5h://127.0.0.1:$port"
        }
    }
    catch { return }
}

function Start-ObsidianGitSync {
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
                $null = Invoke-Git -GitArgs @("-c", "http.sslBackend=openssl", "-c", "remote.origin.proxy=$systemProxy", "fetch", "origin", $Branch)
                $null = Invoke-Git -GitArgs @("config", "--local", "--replace-all", "remote.origin.proxy", $systemProxy)
                $null = Invoke-Git -GitArgs @("config", "--local", "--replace-all", "http.sslBackend", "openssl")
                Write-Log "OK: origin now follows the verified Windows system proxy"
                $connected = $true
            }
            catch { Write-Log ("Current Windows system proxy did not connect: " + $_.Exception.Message) }
        }
        if (-not $connected) {
            $clashCandidates = @(Get-ClashProxyCandidates | Where-Object { $_ })
            foreach ($candidate in $clashCandidates) {
                if ($candidate -eq $systemProxy) { continue }
                try {
                    $null = Invoke-Git -GitArgs @("-c", "http.sslBackend=openssl", "-c", "remote.origin.proxy=$candidate", "fetch", "origin", $Branch)
                    $null = Invoke-Git -GitArgs @("config", "--local", "--replace-all", "remote.origin.proxy", $candidate)
                    $null = Invoke-Git -GitArgs @("config", "--local", "--replace-all", "http.sslBackend", "openssl")
                    Write-Log "OK: origin now uses a verified local Clash listener"
                    $connected = $true
                    break
                }
                catch { Write-Log ("Local proxy $candidate did not connect: " + $_.Exception.Message) }
            }
        }
        if (-not $connected) {
            Write-Log "Trying origin without a proxy (also supports Clash TUN mode)"
            $null = Invoke-Git -GitArgs @("-c", "http.sslBackend=openssl", "-c", "remote.origin.proxy=", "fetch", "origin", $Branch)
            Write-Log "OK: origin connected without an explicit Git proxy"
        }
    }
    # Keep the vault safe: only discard changes that Git confirms are whitespace/EOL-only.
    $staged = Invoke-Git -GitArgs @("diff", "--cached", "--name-only")
    if ($staged) {
        throw "Staged changes exist; refusing to alter the vault: $staged"
    }

    $worktreeStatus = Invoke-Git -GitArgs @("status", "--porcelain", "--untracked-files=no")
    if ($worktreeStatus) {
        $semanticDiff = Invoke-GitResult -GitArgs @("diff", "--ignore-space-at-eol", "--quiet")
        if ($semanticDiff.ExitCode -gt 1) {
            throw "git diff failed with exit code $($semanticDiff.ExitCode): $($semanticDiff.Output)"
        }
        if ($semanticDiff.ExitCode -eq 1) {
            throw "Semantic tracked changes exist; refusing to alter the vault"
        }
        $null = Invoke-Git -GitArgs @("restore", "--worktree", "--", ":/")
        if (Invoke-Git -GitArgs @("status", "--porcelain", "--untracked-files=no")) {
            throw "Tracked files remain dirty after EOL restore; check .gitattributes"
        }
        Write-Log "OK: removed EOL-only tracked changes before fast-forward"
    }

    $null = Invoke-Git -GitArgs @("merge", "--ff-only", "origin/$Branch")
    $head = Invoke-Git -GitArgs @("rev-parse", "--short", "HEAD")
    Write-Log "OK: local vault fast-forwarded to origin/$Branch at $head"
    exit 0
}
catch {
    Write-Log ("ERROR: " + $_.Exception.Message)
    exit 1
}
}

if ($MyInvocation.InvocationName -ne ".") {
    Start-ObsidianGitSync
}
