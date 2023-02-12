#!/bin/bash


git config --global user.email "Tim@..."
git config --global user.name "tijoer"


sudo apt-get -y update # && sudo apt-get -y upgrade

sudo apt-get install \
	vim \
       	zsh \
	tree 

which zsh
#=> /usr/bin/zsh

chsh -s $(which zsh)

sudo curl -L http://install.ohmyz.sh | sh
zsh


