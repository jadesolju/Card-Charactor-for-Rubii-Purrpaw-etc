<#
.SYNOPSIS
    Rubii Card Architect V2.2.7 - CLI & Agent Runner
.DESCRIPTION
    Command-line shortcut utility to interact with Rubii Card Architect,
    copy agent prompts to clipboard, launch studio/previewer, and manage presets.
.EXAMPLE
    rubii --copy
    rubii --preview
    rubii /turbo
    rubii --install
#>

[CmdletBinding()]
param(
    [Parameter(Position=0, ValueFromRemainingArguments=$true)]
    [string[]]$ArgsList
)

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RootDir = Split-Path -Parent $ScriptDir
if (-not $RootDir) { $RootDir = (Get-Location).Path }

$PromptTxt = Join-Path $RootDir "standalone\rubii_architect_v2.2.7_standalone.txt"
$PromptMd = Join-Path $RootDir "standalone\rubii_architect_v2.2.7_standalone.md"
$StudioHtml = Join-Path $RootDir "index.html"
$PreviewHtml = Join-Path $RootDir "tools\card_previewer.html"

$Action = if ($ArgsList -and $ArgsList.Count -gt 0) { $ArgsList[0].ToLower().Trim() } else { "--help" }
$SubArgs = if ($ArgsList -and $ArgsList.Count -gt 1) { $ArgsList[1..($ArgsList.Count - 1)] } else { @() }

function Show-RubiiBanner {
    Write-Host "================================================================" -ForegroundColor Cyan
    Write-Host "  RUBII CARD ARCHITECT V2.2.7 - CLI & AGENT GATEWAY             " -ForegroundColor White
    Write-Host "================================================================" -ForegroundColor Cyan
}

function Show-Help {
    Show-RubiiBanner
    Write-Host "USAGE:" -ForegroundColor Yellow
    Write-Host "  rubii [command / option] [arguments]`n" -ForegroundColor Gray

    Write-Host "COMMANDS:" -ForegroundColor Yellow
    Write-Host "  --copy, -c         Copy v2.2.7 Master System Prompt directly to clipboard" -ForegroundColor White
    Write-Host "  --preview, -p      Launch Live Mobile HTML/CSS Card Previewer in browser" -ForegroundColor White
    Write-Host "  --studio, -s       Launch Full Rubii SVG Studio in browser" -ForegroundColor White
    Write-Host "  --install, -i      Install 'rubii' command globally to your PowerShell Profile" -ForegroundColor White
    Write-Host "  --agent, -a        Output Agent System Instruction for CLI pipes or subagents" -ForegroundColor White
    Write-Host "  --check            Run configuration & asset diagnostics" -ForegroundColor White
    Write-Host "  --help, -h         Display this command manual`n" -ForegroundColor White

    Write-Host "AGENT SLASH COMMAND SHORTCUTS:" -ForegroundColor Yellow
    Write-Host "  rubii /turbo       Copy prompt + /turbo command template to clipboard" -ForegroundColor Green
    Write-Host "  rubii /express     Copy prompt + /express command template to clipboard" -ForegroundColor Green
    Write-Host "  rubii /recommend   Copy prompt + /recommend_theme to clipboard" -ForegroundColor Green
    Write-Host ""
}

switch -Regex ($Action) {
    '^(|--help|-h|help|\/\?)$' {
        Show-Help
    }

    '^(--copy|-c|copy)$' {
        if (Test-Path $PromptTxt) {
            Get-Content -Raw $PromptTxt | Set-Clipboard
            Write-Host "[OK] Copied Rubii Architect V2.2.7 prompt to clipboard!" -ForegroundColor Green
            Write-Host "     Paste directly into Claude, ChatGPT, Gemini, or AGY Agent chat." -ForegroundColor Gray
        } else {
            Write-Host "[ERROR] Standalone prompt file not found at: $PromptTxt" -ForegroundColor Red
        }
    }

    '^(--preview|-p|preview)$' {
        if (Test-Path $PreviewHtml) {
            Start-Process $PreviewHtml
            Write-Host "[OK] Launched Live Mobile Previewer in browser: $PreviewHtml" -ForegroundColor Green
        } else {
            Write-Host "[ERROR] File not found: $PreviewHtml" -ForegroundColor Red
        }
    }

    '^(--studio|-s|studio)$' {
        if (Test-Path $StudioHtml) {
            Start-Process $StudioHtml
            Write-Host "[OK] Launched Rubii Studio in browser: $StudioHtml" -ForegroundColor Green
        } else {
            Write-Host "[ERROR] File not found: $StudioHtml" -ForegroundColor Red
        }
    }

    '^(--agent|-a|agent)$' {
        if (Test-Path $PromptTxt) {
            Get-Content -Raw $PromptTxt
        }
    }

    '^\/turbo' {
        $extra = if ($SubArgs.Count -gt 0) { $SubArgs -join " " } else { "Character: [Name] | Genre: [Genre] | Colors: [Hex]" }
        $turboText = "/turbo`n$extra"
        if (Test-Path $PromptTxt) {
            $fullPrompt = (Get-Content -Raw $PromptTxt) + "`n`n---`n`n" + $turboText
            $fullPrompt | Set-Clipboard
            Write-Host "[OK] System Prompt + /turbo command copied to clipboard!" -ForegroundColor Green
            Write-Host "     Template: $turboText" -ForegroundColor Cyan
        }
    }

    '^\/express' {
        $extra = if ($SubArgs.Count -gt 0) { $SubArgs -join " " } else { "Character: [Name] | Theme: [Vibe]" }
        $expressText = "/express`n$extra"
        if (Test-Path $PromptTxt) {
            $fullPrompt = (Get-Content -Raw $PromptTxt) + "`n`n---`n`n" + $expressText
            $fullPrompt | Set-Clipboard
            Write-Host "[OK] System Prompt + /express command copied to clipboard!" -ForegroundColor Green
        }
    }

    '^\/recommend' {
        if (Test-Path $PromptTxt) {
            $fullPrompt = (Get-Content -Raw $PromptTxt) + "`n`n---`n`n/recommend_theme"
            $fullPrompt | Set-Clipboard
            Write-Host "[OK] System Prompt + /recommend_theme copied to clipboard!" -ForegroundColor Green
        }
    }

    '^(--install|-i|install)$' {
        $ProfilePath = $PROFILE.CurrentUserCurrentHost
        if (-not $ProfilePath) { $ProfilePath = $PROFILE }
        $ProfileDir = Split-Path -Parent $ProfilePath

        if (-not (Test-Path $ProfileDir)) {
            New-Item -ItemType Directory -Path $ProfileDir -Force | Out-Null
        }
        if (-not (Test-Path $ProfilePath)) {
            New-Item -ItemType File -Path $ProfilePath -Force | Out-Null
        }

        $ScriptPath = Join-Path $ScriptDir "rubii.ps1"
        $AliasFunction = @"

# >>> Rubii Card Architect CLI Shortcut >>>
function rubii {
    & "$ScriptPath" @args
}
# <<< Rubii Card Architect CLI Shortcut <<<
"@

        $CurrentProfile = Get-Content -Raw $ProfilePath -ErrorAction SilentlyContinue
        if ($CurrentProfile -notmatch "Rubii Card Architect CLI Shortcut") {
            Add-Content -Path $ProfilePath -Value $AliasFunction
            Write-Host "[OK] Installed 'rubii' command into PowerShell Profile!" -ForegroundColor Green
            Write-Host "     Profile path: $ProfilePath" -ForegroundColor Gray
            Write-Host "     You can now type 'rubii' in any PowerShell terminal!" -ForegroundColor Cyan
        } else {
            Write-Host "[INFO] 'rubii' is already installed in your PowerShell Profile." -ForegroundColor Yellow
        }
    }

    '^(--check|check)$' {
        Show-RubiiBanner
        Write-Host "Diagnostics Check:" -ForegroundColor Yellow
        $items = @(
            @{ Name = "Index Studio HTML"; Path = $StudioHtml },
            @{ Name = "Previewer HTML"; Path = $PreviewHtml },
            @{ Name = "Standalone Prompt TXT"; Path = $PromptTxt },
            @{ Name = "Standalone Prompt MD"; Path = $PromptMd },
            @{ Name = "Color Palettes JSON"; Path = (Join-Path $RootDir "data\json\color_palettes_50.json") },
            @{ Name = "Color Hunt Vault JSON"; Path = (Join-Path $RootDir "data\json\colorhunt_palettes.json") },
            @{ Name = "Typography JSON"; Path = (Join-Path $RootDir "data\json\typography_50.json") }
        )
        foreach ($it in $items) {
            if (Test-Path $it.Path) {
                Write-Host "  [PASS] $($it.Name)" -ForegroundColor Green
            } else {
                Write-Host "  [FAIL] $($it.Name) -> $($it.Path)" -ForegroundColor Red
            }
        }
    }

    default {
        Write-Host "[UNKNOWN COMMAND] '$Action'. Use 'rubii --help' to see available options." -ForegroundColor Red
    }
}
