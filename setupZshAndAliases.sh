#!/bin/bash

# Install zsh
sudp apt-get install zsh

# Set default shell to zsh
sudo chsh -s $(which zsh)

# Install Oh My ZSH
sudo curl -L http://install.ohmyz.sh | sh

# Activate personal aliases
ln .oh-my-zsh/custom/docker.zsh ~/.oh-my-zsh/custom/docker.zsh

