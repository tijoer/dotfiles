#!/bin/bash

docker compose up -d neovim
docker compose logs
docker compose exec -it neovim bash

