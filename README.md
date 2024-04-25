# dotfiles
- Install Neovim  >= 0.8

- Create symbolic link for bash:
ln -s ~/dotfiles/.bashrc .bashrc

- Create simbolic link for tmux conf:
ln -s ~/dotfiles/tmux.conf .tmux.conf

- Install tpm repo for tmux plugins:
mkdir .tmux
cd tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
C-I in tmux for installation

- Create symbolic link for Neovim config:
ln -s ~/dotfiles/nvim nvim
