#!/bin/bash

log_info "Installing binaries..."

source "${DOTFILES_HOME:?}/var/ghr.sh"

for binary in "${GHRS[@]}"; do
  fish -c "ghr $binary"
done
