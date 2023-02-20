#!/bin/bash

# Setup neovim
# Install the latetest stable version. Ubuntu and Debian packages are most of the time too old to work
# with most of the plugins.
# TODO Add a script to download the right package for the architecture.
echo "Downloading Neovim..."
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb -O /tmp/nvim.deb
dpkg -i /tmp/nvim.deb 
rm /tmp/nvim.deb

echo "Installing universal ctags..."
sudo apt-get install -y universal-ctags #needed vor vim tagbar plugin. unictags has rust support. Exuberant not.
#sudo apt-get -y install exuberant-ctags 	# needed for vim tagbar plugin

echo "Install new NodeJs version..."
# Needed for many plugins in Neovim
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
	sudo apt-get install -y nodejs

## Install vim-plug as a plugin manager
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Creating a symbolic link to the nvim configuration dotfiles..."
mkdir -p ~/.config/nvim/
ln .config/nvim/init.vim ~/.config/nvim/init.vim

#nvim --headless '+PlugInstall --sync' +qa
#nvim --headless '+CocInstall coc-rust-analyzer --sync' +qa

