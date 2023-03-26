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

# Activate personal aliases
echo "Creating links for personal ZSH aliases..."
ln ~/dotfiles/.oh-my-zsh/custom/docker.zsh ~/.oh-my-zsh/custom/docker.zsh


# # Copy instead of linking, as the dotfiles are in a volume and linking results in weird behavior
# cp -r .oh-my-zsh ~/

# # Update theme in zshrc
# sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
# sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="agnoster"/g' ~/.zshrc
