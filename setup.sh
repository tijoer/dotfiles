#!/bin/bash

# There are Devcontainers that only have the root user. Sometimes sudo is missing.
# We will install sudo first, so that we do not have to distinguish in the following
# commands between root and non-root users.
# We will also run apt update, as it is not guaranteed that the container is up to date.
if [ $USER = root ] ; then 
 	apt update
    apt install sudo
else
    # in this case sudo is already installed and we can just run apt update
    sudo apt update
fi

# Install all packages from debian_packages.conf
grep -vE "^\s*#" debian_packages.conf | xargs sudo apt install -y

# # Install btop
# echo "Downloading and installing btop..."
# wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-armv7l-linux-musleabihf.tbz
# sudo tar -xvf btop.tbz -C /usr/local/bin --strip-components=3 ./btop/bin/btop
# rm btop.tbz

# source scripts/setupGit.sh
# source scripts/setupZshAndAliases.sh
# #source scripts/setupNeoVim.sh

# # Update locale and set language settings to english
# sudo apt-get install -y locales locales-all
# sudo locale-gen en_US.UTF-8

# # Start a new zsh shell so that the new aliases are available
# echo "Starting zsh..."
# zsh


#install.zsh
#!/usr/bin/env zsh

# for d in *(/); stow -v -t ~/ -S $d