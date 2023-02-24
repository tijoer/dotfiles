#!/bin/bash

docker compose build --no-cache neovim
docker compose up -d neovim
docker compose logs
docker compose exec -it neovim bash

