#!/bin/bash

# Some basic Git config for non enterprise work
git config --global user.email "Tim@..."
git config --global user.name "tijoer"
git config --global pull.rebase false  # merge (the default strategy)


# Install programms that I use frequently
sudo apt-get -y update # && sudo apt-get -y upgrade

sudo apt-get install \
	git \
	zsh \
	tree \
	curl \
	-y

# Install btop
wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-armv7l-linux-musleabihf.tbz
sudo tar -xvf btop.tbz  -C /usr/local/bin --strip-components=3 ./btop/bin/btop
rm btop.tbz

# Install zsh
## Set default shell to zsh
sudo chsh -s $(which zsh)

## Install Oh My ZSH
sudo curl -L http://install.ohmyz.sh | sh

.oh-my-zsh/custom/docker.zsh
ln .oh-my-zsh/custom/docker.zsh ~/.oh-my-zsh/custom/docker.zsh



wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
dpkg -i ./nvim-linux64.deb
rm nvim-linux64.deb

sudo apt-get install universal-ctags #needed vor vim tagbar plugin. unictags has rust support. Exuberant not.
#sudo apt-get -y install exuberant-ctags        # needed for vim tagbar plugin

# Needed for many plugins in Neovim
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
        sudo apt-get install -y nodejs

## Install vim-plug as a plugin manager
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#               https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#mkdir -p ~/.config/nvim/
#ln .config/nvim/init.vim ~/.config/nvim/init.vim


#nvim --headless '+PlugInstall --sync' +qa
#nvim --headless '+CocInstall coc-rust-analyzer --sync' +qa

