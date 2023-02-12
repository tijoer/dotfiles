#!/bin/bash


sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get install \
	vim \
       	zsh \
	tree 

which zsh
#=> /usr/bin/zsh

chsh -s $(which zsh)

curl -L http://install.ohmyz.sh | sh


