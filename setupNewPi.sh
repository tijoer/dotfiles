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

# Install Rust
#curl https://sh.rustup.rs -sSf | sh -s -- -y

# Install Docker
#curl -fsSL https://get.docker.com | sh

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

# Trigger Neovim Install and setup
source setupNeoVim.sh

# Start zsh
zsh

