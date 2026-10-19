<#
.SYNOPSIS
    Duy Modern Agent Harness - One-Click Installer for Windows
.DESCRIPTION
    Installs the 8 Master Skills Hubs, Dual-Agent SOP, and Personal Working Guidance
    into Google Antigravity config or project-level directories.
#>

param(
    [ValidateSet("global", "project", "help")]
    [string]$Mode = "global"
)

$ErrorActionPreference = "Stop"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   Duy Modern Agent Harness - One-Click Installer (v1.0)   " -ForegroundColor Yellow
Write-Host "==========================================================" -ForegroundColor Cyan

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

if ($Mode -eq "help") {
    Write-Host "Usage:"
    Write-Host "  .\install.ps1                 # Install globally into ~/.gemini/config (Default)"
    Write-Host "  .\install.ps1 -Mode global    # Install globally into ~/.gemini/config"
    Write-Host "  .\install.ps1 -Mode project   # Install locally into current project (.agents/)"
    exit 0
}

if ($Mode -eq "global") {
    $TargetConfig = Join-Path $HOME ".gemini\config"
    Write-Host "[1/3] Target directory: $TargetConfig" -ForegroundColor Cyan
    
    $SkillsTarget = Join-Path $TargetConfig "skills"
    $RulesTarget = Join-Path $TargetConfig "rules"

    New-Item -ItemType Directory -Path $SkillsTarget -Force | Out-Null
    New-Item -ItemType Directory -Path $RulesTarget -Force | Out-Null

    Write-Host "[2/3] Copying 8 Master Skills & Rules..." -ForegroundColor Cyan
    Copy-Item -Path (Join-Path $ScriptDir "skills\*") -Destination $SkillsTarget -Recurse -Force
    Copy-Item -Path (Join-Path $ScriptDir "rules\*") -Destination $RulesTarget -Recurse -Force
    Write-Host "      -> 8 Master Hubs and Behavioral Rules copied successfully!" -ForegroundColor Green
}
elseif ($Mode -eq "project") {
    $ProjectTarget = Join-Path (Get-Location) ".agents"
    Write-Host "[1/3] Target project directory: $ProjectTarget" -ForegroundColor Cyan
    
    $SkillsTarget = Join-Path $ProjectTarget "skills"
    $RulesTarget = Join-Path $ProjectTarget "rules"

    New-Item -ItemType Directory -Path $SkillsTarget -Force | Out-Null
    New-Item -ItemType Directory -Path $RulesTarget -Force | Out-Null

    Write-Host "[2/3] Copying 8 Master Skills & Rules to Project..." -ForegroundColor Cyan
    Copy-Item -Path (Join-Path $ScriptDir "skills\*") -Destination $SkillsTarget -Recurse -Force
    Copy-Item -Path (Join-Path $ScriptDir "rules\*") -Destination $RulesTarget -Recurse -Force
    Write-Host "      -> Copied into .agents/ for project-level isolation!" -ForegroundColor Green
}

# Python dependencies
Write-Host "[3/3] Checking optional Python dependencies for visual-presentation..." -ForegroundColor Cyan
try {
    $pythonCmd = Get-Command python -ErrorAction SilentlyContinue
    if ($pythonCmd) {
        Write-Host "      Installing python-pptx and XlsxWriter..." -ForegroundColor Gray
        python -m pip install python-pptx XlsxWriter --quiet
        Write-Host "      -> Python dependencies ready for PowerPoint/Excel generation." -ForegroundColor Green
    } else {
        Write-Host "      -> Python not found on PATH. Skipping pip install (optional)." -ForegroundColor Yellow
    }
} catch {
    Write-Host "      -> Notice: pip install had a non-fatal warning. Proceeding." -ForegroundColor Yellow
}

Write-Host "`n==========================================================" -ForegroundColor Green
Write-Host " Installation Complete! Your AI is now supercharged." -ForegroundColor Green
Write-Host " Benefits Activated:" -ForegroundColor White
Write-Host "   - Anti-Bloat Token Compression (>80% savings)" -ForegroundColor Gray
Write-Host "   - 'พอดี lite' Zero-Fluff Communication Standard" -ForegroundColor Gray
Write-Host "   - Dark Obsidian & Neon Yellow Glassmorphism UI Token Standard" -ForegroundColor Gray
Write-Host "   - Dual-Agent SOP (Antigravity Lead + Codex Specialist)" -ForegroundColor Gray
Write-Host "==========================================================" -ForegroundColor Green
