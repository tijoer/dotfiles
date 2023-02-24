#!/bin/bash

# Install zsh
echo "Installing ZSH..."
sudo apt-get install -y zsh

# Set default shell to zsh
echo "Changing default shell to zsh..."
sudo chsh -s $(which zsh)

# Install Oh My ZSH
echo "Installing ohmyzsh"
sudo curl -L http://install.ohmyz.sh | sh

# Activate personal aliasesA
echo "Creating links for personal ZSH aliases..."
ln .oh-my-zsh/custom/docker.zsh ~/.oh-my-zsh/custom/docker.zsh

