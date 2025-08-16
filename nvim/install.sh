#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Instalando dependências para o Neovim...${NC}\n"

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

install_package() {
    if command_exists apt; then
        sudo apt install -y "$1"
    elif command_exists pacman; then
        sudo pacman -S --noconfirm "$1"
    elif command_exists dnf; then
        sudo dnf install -y "$1"
    else
        echo -e "${RED}Gerenciador de pacotes não suportado. Por favor, instale $1 manualmente.${NC}"
        exit 1
    fi
}

echo -e "${BLUE}Instalando dependências básicas...${NC}"
for pkg in git curl unzip ripgrep fd; do
    if ! command_exists $pkg; then
        echo -e "${BLUE}Instalando $pkg...${NC}"
        install_package $pkg
    fi
done

if ! command_exists node; then
    echo -e "${BLUE}Instalando Node.js via nvm...${NC}"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    
    nvm install --lts
    nvm use --lts
fi

if ! command_exists python3; then
    echo -e "${BLUE}Instalando Python3...${NC}"
    install_package python3
fi

if ! command_exists pip3; then
    echo -e "${BLUE}Instalando pip3...${NC}"
    install_package python3-pip
fi

echo -e "${BLUE}Instalando gerenciadores de pacotes globais...${NC}"
npm install -g neovim pyright typescript typescript-language-server
pip3 install --user pynvim

echo -e "${BLUE}Instalando JetBrainsMono Nerd Font...${NC}"
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/JetBrainsMonoNerdFontMono-Regular.ttf

fc-cache -f -v

echo -e "${BLUE}Instalando formatadores e linters...${NC}"
npm install -g prettier eslint
pip3 install --user black ruff

if ! command_exists nvim; then
    echo -e "${RED}Neovim não está instalado. Por favor, instale-o primeiro.${NC}"
    echo -e "${BLUE}Você pode instalar usando:${NC}"
    echo "  - Ubuntu/Debian: sudo apt install neovim"
    echo "  - Arch Linux: sudo pacman -S neovim"
    echo "  - Fedora: sudo dnf install neovim"
    exit 1
fi

echo -e "\n${GREEN}Instalação concluída!${NC}"
echo -e "${BLUE}Por favor:${NC}"
echo "1. Reinicie seu terminal para carregar as novas configurações"
echo "2. Abra o Neovim e execute :Lazy sync para instalar os plugins"
echo "3. Execute :Mason para verificar a instalação"
echo "Configure seu terminal para usar a fonte JetBrainsMono Nerd Font"
