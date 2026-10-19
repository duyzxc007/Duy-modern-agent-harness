#!/usr/bin/env bash
#
# Duy Modern Agent Harness - One-Click Installer for macOS / Linux
#
set -euo pipefail

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
GRAY='\033[0;37m'
NC='\033[0m'

echo -e "${CYAN}==========================================================${NC}"
echo -e "${YELLOW}   Duy Modern Agent Harness - One-Click Installer (v1.0)   ${NC}"
echo -e "${CYAN}==========================================================${NC}"

MODE="${1:-global}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ "$MODE" = "help" ]; then
    echo "Usage:"
    echo "  ./install.sh                # Install globally into ~/.gemini/config (Default)"
    echo "  ./install.sh global         # Install globally into ~/.gemini/config"
    echo "  ./install.sh project        # Install locally into current project (.agents/)"
    exit 0
fi

if [ "$MODE" = "global" ]; then
    TARGET_CONFIG="$HOME/.gemini/config"
    echo -e "${CYAN}[1/3] Target directory: $TARGET_CONFIG${NC}"
    
    mkdir -p "$TARGET_CONFIG/skills" "$TARGET_CONFIG/rules"
    echo -e "${CYAN}[2/3] Copying 8 Master Skills & Rules...${NC}"
    cp -R "$SCRIPT_DIR/skills/"* "$TARGET_CONFIG/skills/"
    cp -R "$SCRIPT_DIR/rules/"* "$TARGET_CONFIG/rules/"
    echo -e "${GREEN}      -> 8 Master Hubs and Rules copied successfully!${NC}"
elif [ "$MODE" = "project" ]; then
    PROJECT_TARGET="$(pwd)/.agents"
    echo -e "${CYAN}[1/3] Target project directory: $PROJECT_TARGET${NC}"
    
    mkdir -p "$PROJECT_TARGET/skills" "$PROJECT_TARGET/rules"
    echo -e "${CYAN}[2/3] Copying 8 Master Skills & Rules to Project...${NC}"
    cp -R "$SCRIPT_DIR/skills/"* "$PROJECT_TARGET/skills/"
    cp -R "$SCRIPT_DIR/rules/"* "$PROJECT_TARGET/rules/"
    echo -e "${GREEN}      -> Copied into .agents/ for project-level isolation!${NC}"
fi

echo -e "${CYAN}[3/3] Checking optional Python dependencies for visual-presentation...${NC}"
if command -v python3 &>/dev/null; then
    echo -e "${GRAY}      Installing python-pptx and XlsxWriter...${NC}"
    python3 -m pip install python-pptx XlsxWriter --quiet || true
    echo -e "${GREEN}      -> Python dependencies ready for PowerPoint/Excel generation.${NC}"
else
    echo -e "${YELLOW}      -> python3 not found. Skipping pip install (optional).${NC}"
fi

echo -e "\n${GREEN}==========================================================${NC}"
echo -e "${GREEN} Installation Complete! Your AI is now supercharged.${NC}"
echo -e " Benefits Activated:"
echo -e "${GRAY}   - Anti-Bloat Token Compression (>80% savings)${NC}"
echo -e "${GRAY}   - 'พอดี lite' Zero-Fluff Communication Standard${NC}"
echo -e "${GRAY}   - Dark Obsidian & Neon Yellow Glassmorphism UI Token Standard${NC}"
echo -e "${GRAY}   - Dual-Agent SOP (Antigravity Lead + Codex Specialist)${NC}"
echo -e "${GREEN}==========================================================${NC}"
