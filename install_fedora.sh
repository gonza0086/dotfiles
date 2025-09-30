#!/usr/bin/env bash

# distro
sudo dnf update --refresh # update fedora
sudo dnf install -y ncurses ripgrep tmux neovim

# bashrc
mv ~/.bashrc ~/.bashrc.ori
ln -s ~/dotfiles/bashrc .bashrc

# tmux
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
mkdir ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# nvim
mkdir .config
ln -s ~/dotfiles/nvim ~/.config/nvim
