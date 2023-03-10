#!/bin/bash

# Setup neovim
# Install the latetest stable version. Ubuntu and Debian packages are most of the time too old to work
# with most of the plugins.
# TODO Add a script to download the right package for the architecture.
echo "Downloading Neovim..."
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb -O /tmp/nvim.deb
sudo dpkg -i /tmp/nvim.deb 
rm /tmp/nvim.deb

echo "Installing universal ctags..."
sudo apt-get install -y universal-ctags #needed vor vim tagbar plugin. unictags has rust support. Exuberant-ctags does not have good Rust support.
#sudo apt-get -y install exuberant-ctags 	# needed for vim tagbar plugin

echo "Install new NodeJs version..."
# Needed for many plugins in Neovim
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
	sudo apt-get install -y nodejs

pip3 install pynvim
sudo npm i -g neovim

## Install vim-plug as a plugin manager
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Creating a symbolic link to the nvim configuration dotfiles..."
mkdir -p ~/.config
rm -rf ~/.config/nvim || true
ln -s ~/dotfiles/.config/nvim ~/.config/

#nvim --headless '+PlugInstall --sync' +qa
#nvim --headless '+CocInstall coc-rust-analyzer --sync' +qa

# Install win32yank into the bin folder to make neovim integration withing WSL possible.
sudo apt-get install -y unzip
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/
