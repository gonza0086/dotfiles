#!/usr/bin/env bash

# git
git config --global user.email "hgonzalo2000@gmail.com"
git config --global user.name "gonza0086"

# distro & essentials
sudo dnf update --refresh # update fedora
sudo dnf install -y ncurses ripgrep tmux neovim
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh # rust
sudo dnf install -y postgresql-server postgresql-contrib # postgresql
sudo systemctl enable postgresql

# bashrc
mv ~/.bashrc ~/.bashrc.ori
ln -s ~/dotfiles/bashrc  ~/.bashrc

# tmux
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
mkdir ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# nvim
mkdir ~/.config
ln -s ~/dotfiles/nvim ~/.config/nvim
