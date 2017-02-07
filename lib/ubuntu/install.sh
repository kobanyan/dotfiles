#!/bin/bash

log_info "Start install process to ubuntu..."

source "${DOTFILES_HOME:?}/var/ubuntu/directories.sh"
source "$DOTFILES_HOME/var/ubuntu/apt.sh"

source "$DOTFILES_HOME/lib/apt.sh"

if [ "$has_desktop" == "true" ]; then
  source "$DOTFILES_HOME/lib/fonts.sh"
  source "$DOTFILES_HOME/lib/ubuntu/umake.sh"
  source "$DOTFILES_HOME/lib/code.sh"
fi
