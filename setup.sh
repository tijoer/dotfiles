#!/bin/bash

# There are Devcontainers that only have the root user. Sometimes sudo is missing.
# We will install sudo first, so that we do not have to distinguish in the following
# commands between root and non-root users.
# We will also run apt update, as it is not guaranteed that the container is up to date.
if [[ "$(id -u)" -eq 0 ]] ; then # The current user is root
	apt update
	apt install sudo
else
    # in this case sudo is already installed and we can just run apt update
    sudo apt update
fi

# Install all packages from debian_packages.conf
grep -vE "^\s*#" debian_packages.conf | xargs sudo apt install -y

# Setup everything that is more complex and needs it's own script or specialised command.
source scripts/setupZshAndAliases.sh
# source scripts/setupBtop.sh
# source scripts/setupLocale.sh
source scripts/setupGithubCli.sh
# source scripts/setupNodeAndNpm.sh

stow -t ~/ -S git
# stow -t ~/ -S neovim
stow -t ~/ -S oh-my-zsh
rm ~/.zshrc && stow -t ~/ -S zsh


# source scripts/setupNeoVim.sh # This needs to be done after stowing the neovim config

# Start a new zsh shell so that the new aliases are available
# echo "Starting zsh..."
# zsh

