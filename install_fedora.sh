#!/usr/bin/env bash

# # git
git config --global user.email "hgonzalo2000@gmail.com"
git config --global user.name "gonza0086"
git config --global credential.helper 'cache --timeout=3600'
#
# # distro & essentials
sudo dnf update -y --refresh # update fedora
sudo dnf install -y ncurses ripgrep tmux neovim dnf-plugins-core wget
mkdir ~/workspace
# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer
# postgresql
sudo dnf install -y postgresql-server postgresql-contrib
sudo systemctl enable postgresql
sudo postgresql-setup --initdb --unit postgresql
sudo systemctl start postgresql
sudo -u postgres createuser $USER
# docker
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker
sudo systemctl start docker
# npm for neovim
sudo npm install -g neovim

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

