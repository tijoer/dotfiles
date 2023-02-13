#!/bin/bash

# Setup neovim
# Install the latetest stable version. Ubuntu and Debian packages are most of the time too old to work
# with most of the plugins.
# TODO Add a script to download the right package for the architecture.
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
dpkg -i ./nvim-linux64.deb
rm nvim-linux64.deb

sudo apt-get install universal-ctags #needed vor vim tagbar plugin. unictags has rust support. Exuberant not.
#sudo apt-get -y install exuberant-ctags 	# needed for vim tagbar plugin

# Needed for many plugins in Neovim
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
	sudo apt-get install -y nodejs

## Install vim-plug as a plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p ~/.config/nvim/
ln .config/nvim/init.vim ~/.config/nvim/init.vim


nvim --headless '+PlugInstall --sync' +qa
nvim --headless '+CocInstall coc-rust-analyzer --sync' +qa

