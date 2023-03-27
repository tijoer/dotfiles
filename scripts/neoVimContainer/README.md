# Neovim Docker

This Docker will have a Neovim installation and will copy your ~/.ssh/id_rsa file.

Your ~/.ssh/id_rsa file will be provided as a docker compose secret. This means that if your container is compromises YOU are compromised. That means that this is not for enterprise use and should only be used in closed networks that you trust.
