# dotfiles
## BASHRC
- Create symbolic link for bash:
ln -s ~/dotfiles/.bashrc .bashrc

## TMUX
- Install tmux
sudo pacman -S tmux

- Create simbolic link for tmux conf:
ln -s ~/dotfiles/tmux.conf .tmux.conf

- Install tpm repo for tmux plugins:
mkdir .tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
C-I in tmux for installation

## NEOVIM
- Install neovim
sudo pacman -S neovim

- Create symbolic link for Neovim config:
ln -s ~/dotfiles/nvim nvim
