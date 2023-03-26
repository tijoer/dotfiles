#!/bin/bash

# Install all packages
grep "^[^#;]" .debian-packages.conf | xargs sudo apt -y install

# Install btop
echo "Downloading and installing btop..."
wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-armv7l-linux-musleabihf.tbz
sudo tar -xvf btop.tbz -C /usr/local/bin --strip-components=3 ./btop/bin/btop
rm btop.tbz

# Copy instead of linking, as the dotfiles are in a volume and linking results in weird behavior
cp -r .oh-my-zsh ~/

# Update theme in zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="agnoster"/g' ~/.zshrc

# Update locale
apt-get install -y locales locales-all
locale-gen en_US.UTF-8

# Start a new zsh shell so that the new aliases are available
echo "Starting zsh..."
zsh
