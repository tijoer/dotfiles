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

# Use stow to symlink all dotfiles. Loops through directories in the current directory
# More config for stow can be found in the .stowrc and .stow-local-ignore files.
for d in *(/); stow -v -t ~/ -S $d

source scripts/setupZshAndAliases.sh
# source scripts/setupNeoVim.sh
# source scripts/setupBtop.sh
source scripts/setupLocale.sh

# Start a new zsh shell so that the new aliases are available
echo "Starting zsh..."
zsh
