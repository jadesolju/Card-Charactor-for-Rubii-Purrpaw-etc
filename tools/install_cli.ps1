# ====================================================================
# Rubii Card Architect V2.2.7 - CLI Installer for PowerShell
# ====================================================================

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RubiiCliPath = Join-Path $ScriptDir "rubii.ps1"

Write-Host "================================================================" -ForegroundColor Cyan
Write-Host "  RUBII CARD ARCHITECT V2.2.7 - POWERSHELL CLI INSTALLER        " -ForegroundColor White
Write-Host "================================================================" -ForegroundColor Cyan

if (-not (Test-Path $RubiiCliPath)) {
    Write-Host "[ERROR] Could not find rubii.ps1 at: $RubiiCliPath" -ForegroundColor Red
    exit 1
}

$ProfilePath = $PROFILE.CurrentUserCurrentHost
if (-not $ProfilePath) { $ProfilePath = $PROFILE }
$ProfileDir = Split-Path -Parent $ProfilePath

if (-not (Test-Path $ProfileDir)) {
    New-Item -ItemType Directory -Path $ProfileDir -Force | Out-Null
}
if (-not (Test-Path $ProfilePath)) {
    New-Item -ItemType File -Path $ProfilePath -Force | Out-Null
}

$AliasCode = @"

# >>> Rubii Card Architect CLI Shortcut >>>
function rubii {
    & "$RubiiCliPath" @args
}
# <<< Rubii Card Architect CLI Shortcut <<<
"@

$ProfileContent = Get-Content -Raw $ProfilePath -ErrorAction SilentlyContinue
if ($ProfileContent -match "Rubii Card Architect CLI Shortcut") {
    Write-Host "[INFO] 'rubii' command is already installed in your profile: $ProfilePath" -ForegroundColor Yellow
} else {
    Add-Content -Path $ProfilePath -Value $AliasCode
    Write-Host "[SUCCESS] 'rubii' command registered in PowerShell Profile!" -ForegroundColor Green
    Write-Host "          Profile: $ProfilePath" -ForegroundColor Gray
}

Write-Host "`nTEST IT NOW:" -ForegroundColor Yellow
Write-Host "  . `$PROFILE       # Reload your profile" -ForegroundColor White
Write-Host "  rubii --help     # View all available CLI commands" -ForegroundColor White
Write-Host "  rubii /turbo     # Copy prompt + /turbo to clipboard" -ForegroundColor White
Write-Host "  rubii --preview  # Launch live mobile card previewer`n" -ForegroundColor White
