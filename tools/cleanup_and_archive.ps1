# ====================================================================
# Rubii Card Architect - Repository Cleanup & Archiving Utility
# ====================================================================

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$Root = Split-Path -Parent $PSScriptRoot
if (-not $Root) { $Root = (Get-Location).Path }

Write-Host "======================================================" -ForegroundColor Cyan
Write-Host "  Rubii Card Architect - Workspace Organizer Utility  " -ForegroundColor Yellow
Write-Host "======================================================" -ForegroundColor Cyan
Write-Host "Working Directory: $Root" -ForegroundColor Gray

# 1. Create Target Directories
$Dirs = @(
    "core",
    "standalone",
    "data\json",
    "data\yaml",
    "data\markdown",
    "templates",
    "integrations",
    "tools",
    "docs",
    "archive\v2.2.6",
    "archive\v2.2.5",
    "archive\v2.2.4",
    "archive\legacy_logs",
    "archive\legacy_txt_duplicates"
)

foreach ($d in $Dirs) {
    $fullPath = Join-Path $Root $d
    if (-not (Test-Path $fullPath)) {
        New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
        Write-Host "[CREATED] Directory: $d" -ForegroundColor Green
    }
}

# 2. Synchronize Core & Standalone V2.2.7 files
$v227File = Get-ChildItem -Path $Root -Filter "*2.2.7*.MD" | Select-Object -First 1
if ($v227File) {
    Copy-Item $v227File.FullName (Join-Path $Root "core\system_prompt_v2.2.7_express.md") -Force
    Copy-Item $v227File.FullName (Join-Path $Root "standalone\rubii_architect_v2.2.7_standalone.md") -Force
    Copy-Item $v227File.FullName (Join-Path $Root "standalone\rubii_architect_v2.2.7_standalone.txt") -Force
    Write-Host "[SYNCED] Standalone & Core v2.2.7 Prompts" -ForegroundColor Green
}

$skillFile = Get-ChildItem -Path $Root -Filter "SKILL.MD" | Select-Object -First 1
if ($skillFile) {
    Copy-Item $skillFile.FullName (Join-Path $Root "core\skill_spec.md") -Force
    Write-Host "[SYNCED] core\skill_spec.md" -ForegroundColor Green
}

$checkerFile = Get-ChildItem -Path $Root -Filter "*checker*.yaml" | Select-Object -First 1
if ($checkerFile) {
    Copy-Item $checkerFile.FullName (Join-Path $Root "core\config_checker.yaml") -Force
    Write-Host "[SYNCED] core\config_checker.yaml" -ForegroundColor Green
}

# 3. Archive Old Versions Safely
# Move v2.2.6
Get-ChildItem -Path $Root -Filter "*2.2.6*" | ForEach-Object {
    Move-Item $_.FullName (Join-Path $Root "archive\v2.2.6") -Force
    Write-Host "[ARCHIVED] $($_.Name) -> archive/v2.2.6/" -ForegroundColor Magenta
}

# Move v2.2.5
Get-ChildItem -Path $Root -Filter "*2.2.5*" | ForEach-Object {
    Move-Item $_.FullName (Join-Path $Root "archive\v2.2.5") -Force
    Write-Host "[ARCHIVED] $($_.Name) -> archive/v2.2.5/" -ForegroundColor Magenta
}

# Move v2.2.4 & older root versions
Get-ChildItem -Path $Root -Filter "*2.2.4*" | ForEach-Object {
    Move-Item $_.FullName (Join-Path $Root "archive\v2.2.4") -Force
    Write-Host "[ARCHIVED] $($_.Name) -> archive/v2.2.4/" -ForegroundColor Magenta
}

Get-ChildItem -Path $Root -Filter "*V2.MD" | ForEach-Object {
    Move-Item $_.FullName (Join-Path $Root "archive\v2.2.4") -Force
    Write-Host "[ARCHIVED] $($_.Name) -> archive/v2.2.4/" -ForegroundColor Magenta
}

# Move Legacy Folders using Wildcards
Get-ChildItem -Path $Root -Directory -Filter "*Version*" | ForEach-Object {
    $src = $_.FullName
    Get-ChildItem -Path $src | ForEach-Object {
        Move-Item $_.FullName (Join-Path $Root "archive") -Force
    }
    Remove-Item $src -Force -Recurse
    Write-Host "[ARCHIVED] Old Version Directory -> archive/" -ForegroundColor Magenta
}

Get-ChildItem -Path $Root -Directory -Filter "LOG*" | ForEach-Object {
    $src = $_.FullName
    Get-ChildItem -Path $src | ForEach-Object {
        Move-Item $_.FullName (Join-Path $Root "archive\legacy_logs") -Force
    }
    Remove-Item $src -Force -Recurse
    Write-Host "[ARCHIVED] LOG Directory -> archive/legacy_logs/" -ForegroundColor Magenta
}

# Move Theme Presets
Get-ChildItem -Path $Root -Directory -Filter "*Theme*" | ForEach-Object {
    $src = $_.FullName
    Get-ChildItem -Path $src | ForEach-Object {
        $destName = $_.Name.Replace(".txt", ".md")
        Move-Item $_.FullName (Join-Path $Root "templates\$destName") -Force
    }
    Remove-Item $src -Force -Recurse
    Write-Host "[ORGANIZED] Theme Presets Directory -> templates/" -ForegroundColor Green
}

# Move Manuals / Guides
Get-ChildItem -Path $Root -Directory -Filter "*คู่มือ*" | ForEach-Object {
    $src = $_.FullName
    Get-ChildItem -Path $src | ForEach-Object {
        Move-Item $_.FullName (Join-Path $Root "docs\user_guide.txt") -Force
    }
    Remove-Item $src -Force -Recurse
    Write-Host "[ORGANIZED] Manual Directory -> docs/" -ForegroundColor Green
}

# Archive loose redundant .txt files in root
Get-ChildItem -Path $Root -File -Filter "*.txt" | ForEach-Object {
    Move-Item $_.FullName (Join-Path $Root "archive\legacy_txt_duplicates") -Force
    Write-Host "[ARCHIVED] $($_.Name) -> archive/legacy_txt_duplicates/" -ForegroundColor DarkYellow
}

Write-Host "======================================================" -ForegroundColor Cyan
Write-Host "  Repository Cleanup & Archiving Completed!           " -ForegroundColor Green
Write-Host "======================================================" -ForegroundColor Cyan
