#!/bin/bash

# add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# Set default shell to zsh
echo "Changing default shell to zsh..."
sudo chsh -s $(which zsh)

# Install Oh My ZSH
echo "Installing ohmyzsh"
rm -rf ~/.oh-my-zsh
ZSH= sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Update theme in zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="agnoster"/g' ~/.zshrc

Activate personal aliases
