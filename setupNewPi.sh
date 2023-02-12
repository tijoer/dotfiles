#!/bin/bash


git config --global user.email "Tim@..."
git config --global user.name "tijoer"


sudo apt-get -y update # && sudo apt-get -y upgrade

sudo apt-get install \
	vim \
       	zsh \
	tree 

wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-armv7l-linux-musleabihf.tbz
sudo tar -xvf btop.tbz  -C /usr/local/bin --strip-components=3 ./btop/bin/btop

which zsh
#=> /usr/bin/zsh

chsh -s $(which zsh)

sudo curl -L http://install.ohmyz.sh | sh
zsh
