#!/bin/bash

# Install programms that I use frequently
sudo apt-get -y update # && sudo apt-get -y upgrade

sudo apt-get install \
	git \
	tree \
	curl \
	-y

source setupGit.sh
source setupZshAndAliases.sh

# Install btop
wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-armv7l-linux-musleabihf.tbz
sudo tar -xvf btop.tbz  -C /usr/local/bin --strip-components=3 ./btop/bin/btop
rm btop.tbz

# Trigger Neovim Install and setup
source setupNeoVim.sh

# Start zsh
zsh

