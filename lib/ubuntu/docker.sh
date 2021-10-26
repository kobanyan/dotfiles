#!/bin/bash

log_info "Installing docker ..."

if command -v docker > /dev/null 2>&1; then
  log_warn "Skip installing docker. docker is already installed."
  return
fi

bash -c "$(curl -fsSL https://get.docker.com)"

log_info "Installing docker compose..."

mkdir -p $HOME/.docker/cli-plugins/
curl -sSL https://github.com/docker/compose/releases/download/v2.0.1/docker-compose-linux-x86_64 -o $HOME/.docker/cli-plugins/docker-compose
chmod +x $HOME/.docker/cli-plugins/docker-compose
