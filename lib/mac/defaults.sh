#!/bin/bash

log_info "Installing preferences using defaults..."

if [ -z "$DOTFILES_HOME" ]; then
  log_error '$DOTFILES_HOME is undefined.'
  exit 1
fi

for file in "$DOTFILES_HOME/var/mac/defaults/*"
do
  source $file
done