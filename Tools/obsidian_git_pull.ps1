param(
    [string]$VaultPath = "D:\GitHub-Trending-KB",
    [string]$Branch = "main"
)

$ErrorActionPreference = "Stop"
$LogDir = Join-Path $VaultPath ".sync-logs"
$LogFile = Join-Path $LogDir "git-pull.log"

function Write-Log([string]$Message) {
    if (-not (Test-Path $LogDir)) {
        New-Item -ItemType Directory -Path $LogDir -Force | Out-Null
    }
    $ts = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "[$ts] $Message" | Out-File -FilePath $LogFile -Append -Encoding utf8
}

try {
    if (-not (Test-Path $VaultPath)) { throw "VaultPath 不存在: $VaultPath" }
    $git = Get-Command git -ErrorAction Stop
    Push-Location $VaultPath
    try {
        $ok = & $git.Source rev-parse --is-inside-work-tree 2>$null
        if ($LASTEXITCODE -ne 0 -or $ok.Trim() -ne "true") { throw "该目录不是 Git 仓库: $VaultPath" }
        Write-Log "开始同步"
        & $git.Source fetch origin $Branch 2>&1 | ForEach-Object { Write-Log $_ }
        if ($LASTEXITCODE -ne 0) { throw "git fetch 失败" }
        & $git.Source merge --ff-only "origin/$Branch" 2>&1 | ForEach-Object { Write-Log $_ }
        if ($LASTEXITCODE -ne 0) { throw "git merge --ff-only 失败。可能存在本地修改或分支分叉；未强制覆盖本地文件。" }
        Write-Log "同步完成"
    }
    finally { Pop-Location }
}
catch {
    Write-Log ("ERROR: " + $_.Exception.Message)
    exit 1
}
