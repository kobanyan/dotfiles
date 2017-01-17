#!/bin/bash

log_info "Start install process to linux..."

if [ -z "$DOTFILES_HOME" ]; then
  log_error '$DOTFILES_HOME is undefined.'
  exit 1
fi

source "$DOTFILES_HOME/var/linux/directories.sh"

source "$DOTFILES_HOME/lib/linux/apt.sh"
source "$DOTFILES_HOME/lib/linux/umake.sh"
