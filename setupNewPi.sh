#!/bin/bash

# Install programms that I use frequently
echo "Updating apt packages and installing some basic packages."
sudo apt-get -y update # && sudo apt-get -y upgrade

sudo apt-get install \
	git \
	tree \
	curl \
	-y

source scripts/setupGit.sh
source scripts/setupZshAndAliases.sh

# Install btop
echo "Downloading and installing btop..."
wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-armv7l-linux-musleabihf.tbz
sudo tar -xvf btop.tbz  -C /usr/local/bin --strip-components=3 ./btop/bin/btop
rm btop.tbz

# Trigger Neovim Install and setup
source scripts/setupNeoVim.sh

# Start zsh
echo "Starting zsh..."
zsh

