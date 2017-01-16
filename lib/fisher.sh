#!/bin/bash

log_info "Installing fisherman..."

if [ -z "$DOTFILES_HOME" ]; then
  log_error '$DOTFILES_HOME is undefined.'
  exit 1
fi

cat "$DOTFILES_HOME/lib/fisher.fish" | DOTFILES_HOME=$DOTFILES_HOME fish
