$ErrorActionPreference = 'Stop'
$PullScript = Join-Path (Split-Path $PSScriptRoot -Parent) 'obsidian_git_pull.ps1'
. $PullScript

$Root = Join-Path $env:LOCALAPPDATA 'GitHub-Trending-KB\artifacts'
$FixtureDir = Join-Path $Root ("sync-tests-" + [guid]::NewGuid().ToString('N'))
$GitExe = (Get-Command git -ErrorAction Stop).Source
$Utf8 = New-Object System.Text.UTF8Encoding($false)

function Assert-Git([string[]]$Arguments) {
    $PreviousPreference = $ErrorActionPreference
    try {
        $ErrorActionPreference = 'Continue'
        $null = & $GitExe -C $FixtureDir @Arguments 2>&1 | Out-String
    }
    finally { $ErrorActionPreference = $PreviousPreference }
    if ($LASTEXITCODE -ne 0) { throw "Fixture git $($Arguments[0]) failed" }
}

try {
    New-Item -ItemType Directory -Path (Join-Path $FixtureDir 'Index') -Force | Out-Null
    Assert-Git -Arguments @('init')
    Assert-Git -Arguments @('config', 'core.autocrlf', 'false')
    [IO.File]::WriteAllText((Join-Path $FixtureDir '.gitattributes'), "*.jsonl text eol=lf`n", $Utf8)
    $Jsonl = Join-Path $FixtureDir 'Index\projects.jsonl'
    [IO.File]::WriteAllText($Jsonl, "{`"id`":1}`r`n{`"id`":2}`n", $Utf8)
    Assert-Git -Arguments @('add', '.gitattributes', 'Index/projects.jsonl')
    $RawSha = (& $GitExe -C $FixtureDir hash-object -w --no-filters $Jsonl).Trim()
    if ($LASTEXITCODE -ne 0) { throw 'Could not create the mixed-EOL fixture blob' }
    Assert-Git -Arguments @('update-index', '--cacheinfo', "100644,$RawSha,Index/projects.jsonl")
    Assert-Git -Arguments @('-c', 'user.name=Sync Test', '-c', 'user.email=sync-test@example.invalid', 'commit', '-m', 'fixture')
    [IO.File]::SetLastWriteTimeUtc($Jsonl, (Get-Date).ToUniversalTime().AddSeconds(2))

    $VaultPath = $FixtureDir
    $script:GitExe = $GitExe
    $WarningResult = Invoke-GitResult -GitArgs @('diff', '--ignore-space-at-eol', '--quiet', '--', 'Index/projects.jsonl')
    if ($WarningResult.ExitCode -ne 0) {
        throw "EOL-only diff should exit 0: $($WarningResult.Output)"
    }
    if ($WarningResult.Output -notmatch 'CRLF') {
        throw 'Expected Git warning on stderr to be captured'
    }

    [IO.File]::WriteAllText((Join-Path $FixtureDir '.gitattributes'), "*.jsonl -text`n", $Utf8)
    $Status = Invoke-Git -GitArgs @('status', '--short', '--', 'Index/projects.jsonl')
    if ($Status) { throw 'Disabling JSONL normalization should clear the phantom change' }

    [IO.File]::WriteAllText($Jsonl, "{`"id`":3}`r`n{`"id`":2}`n", $Utf8)
    $Changed = Invoke-GitResult -GitArgs @('diff', '--ignore-space-at-eol', '--quiet', '--', 'Index/projects.jsonl')
    if ($Changed.ExitCode -ne 1) { throw 'Semantic edits must still be detected' }
    Write-Host 'PASS: Git warning, EOL attribute, and semantic-change regression tests'
}
finally {
    $ResolvedRoot = [IO.Path]::GetFullPath($Root).TrimEnd('\') + '\'
    $ResolvedFixture = [IO.Path]::GetFullPath($FixtureDir)
    if (-not $ResolvedFixture.StartsWith($ResolvedRoot, [StringComparison]::OrdinalIgnoreCase)) {
        throw "Refusing to remove unexpected fixture path: $ResolvedFixture"
    }
    if (Test-Path -LiteralPath $ResolvedFixture) {
        Remove-Item -LiteralPath $ResolvedFixture -Recurse -Force
    }
}
