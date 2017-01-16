#!/bin/bash

log_info "Start install process to mac..."

if [ -z "$DOTFILES_HOME" ]; then
  log_error '$DOTFILES_HOME is undefined.'
  exit 1
fi

source "$DOTFILES_HOME/var/mac/directories.sh"
source "$DOTFILES_HOME/var/mac/homebrew.sh"

source "$DOTFILES_HOME/lib/mac/defaults.sh"
source "$DOTFILES_HOME/lib/mac/preferences.sh"

