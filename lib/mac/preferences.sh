#!/bin/bash

log_info "Installing preferences..."

if [ -z "$DOTFILES_HOME" ]; then
  log_error '$DOTFILES_HOME is undefined.'
  exit 1
fi

if [ -z "$PREFERENCES_DIR" ]; then
  log_error '$PREFERENCES_DIR is undefined.'
  exit 1
fi

cp -a "$DOTFILES_HOME/var/mac/Preferences/." "$PREFERENCES_DIR"
