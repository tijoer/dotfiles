#!/bin/bash

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# Set default shell to zsh
echo "Changing default shell to zsh..."
sudo chsh -s $(which zsh)
# Sometimes in Devcontainers the above command does not work, this is a fallback that
# will lead to issues if you do not have zsh installed or want to work with bash.
echo "zsh" >> ~/.bashrc 

# Install Oh My ZSH
echo "Installing ohmyzsh"
rm -rf ~/.oh-my-zsh
ZSH= sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Update theme in zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="agnoster"/g' ~/.zshrc

# Activate personal aliases
# echo "Creating links for personal ZSH aliases..."
# ln ~/dotfiles/.oh-my-zsh/custom/docker.zsh ~/.oh-my-zsh/custom/docker.zsh

# # Copy instead of linking, as the dotfiles are in a volume and linking results in weird behavior
# cp -r .oh-my-zsh ~/
