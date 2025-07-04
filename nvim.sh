#!/bin/bash

# Detectar si el sistema usa 'dnf' (Fedora) o 'apt' (Debian/Ubuntu)
if command -v dnf &> /dev/null; then
    echo "Detectado Fedora (o derivada basada en dnf)."
    sudo dnf install -y neovim fzf
elif command -v apt &> /dev/null; then
    echo "Detectado Debian/Ubuntu (o derivada basada en apt)."
    sudo apt update
    sudo apt install -y neovim fzf python3-pip
else
    echo "No se pudo detectar el gestor de paquetes (dnf/apt)."
    exit 1
fi

if command -v curl &> /dev/null; then
    echo "curl ya está instalado."
else
    echo "curl no está instalado. Instalando..."
    # Detectar distribución e instalar
    if command -v apt &> /dev/null; then
        sudo apt update && sudo apt install -y curl
    elif command -v dnf &> /dev/null; then
        sudo dnf install -y curl
    else
        echo "Distribución no soportada (no se encontró apt/dnf)."
        exit 1
    fi
fi


# Configuración común de Neovim (Vundle y CoC)
echo "Configurando Neovim..."
mkdir -p ~/.config/nvim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
pip3 install --user pynvim
cd ~/.config/nvim/bundle
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1

# Descargar las configuraciones
mkdir -p ~/.config/nvim && \
curl -o ~/.config/nvim/init.vim https://raw.githubusercontent.com/perseoq/nvim/refs/heads/main/init.vim

# instalando dependencias
#cd ~/.config/nvim/bundle/coc.nvim/

echo "¡Instalación completada!"


