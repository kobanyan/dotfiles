#!/bin/bash

log_info "Installing preferences using defaults..."

for file in "${DOTFILES_HOME:?}/var/osx/defaults/*"
do
  source $file
done
