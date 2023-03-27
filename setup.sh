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

source scripts/setupZshAndAliases.sh
source scripts/setupNeoVim.sh
# source scripts/setupBtop.sh
source scripts/setupLocale.sh

stow -v -t ~/ -S git
stow -v -t ~/ -S neovim
stow -v -t ~/ -S oh-my-zsh

# Start a new zsh shell so that the new aliases are available
echo "Starting zsh..."
zsh
