# Personal Dotfiles and setup scripts

These are my personal dotfiles. I do not use many custom aliases today but try to rely on oh-my-zsh, as I consider their aliases as defacto standard for many usecases.

# Requirements

Debian based distributions.

Works in most Devcontainers.

# How this works

A setup.sh file installs the packages that I like.

Symlinks to dotfiles are created using GNU Stow.

More complex setups are moved into the scripts folder.

## Copy this for a quick installation.

```bash
sudo apt update
sudo apt install git
git clone https://github.com/tijoer/dotfiles.git
cd dotfiles
./setup.sh


```

