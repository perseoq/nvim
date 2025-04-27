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

# Configuración común de Neovim (Vundle y CoC)
echo "Configurando Neovim..."
mkdir -p ~/.config/nvim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
pip3 install --user pynvim
cd ~/.config/nvim/bundle
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1

echo "¡Instalación completada!"
