#!/bin/bash

log_info "Installing preferences using defaults..."

for file in "${DOTFILES_HOME:?}/var/mac/defaults/*"
do
  source $file
done
