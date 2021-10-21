#!/bin/bash

log_info "Installing docker ..."

bash -c "$(curl -fsSL https://get.docker.com)"

log_info "Installing docker compose..."

mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.0.1/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
