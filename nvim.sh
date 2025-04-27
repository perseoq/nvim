#!/bin/bash


sudo dnf install -y neovim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
pip3 install --user pynvim
cd ~/.vim/bundle
git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1
sudo dnf install fzf
