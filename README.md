# Personal Dotfiles and setup scripts

These are my personal dotfiles. I do not use many custom aliases today but try to rely on oh-my-zsh, as I consider their aliases as defacto standard for many cases.

This repository also contains a Docker with a neovim installation, that can be used as a custom IDE. It will copy your ~/.ssh/id_rsa file as a docker compose secret. This means that if your container is compromises YOU are compromised. This is not for enterprise use.

```
sudo apt-get update
sudo apt-get install git -y
git clone https://github.com/tijoer/dotfiles.git
cd dotfiles
chmod +x setupNewPi.sh
./setupNewPi.sh
```
