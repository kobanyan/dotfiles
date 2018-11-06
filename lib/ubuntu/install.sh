#!/bin/bash

log_info "Start install process to ubuntu..."

# include variables
source "${DOTFILES_HOME:?}/var/ubuntu/directories.sh"
source "$DOTFILES_HOME/var/ubuntu/apt.sh"

# setup repository
source "$DOTFILES_HOME/lib/ubuntu/docker.sh"
if [ "$has_desktop" == "true" ]; then
  source "$DOTFILES_HOME/lib/ubuntu/code.sh"
fi

# install
source "$DOTFILES_HOME/lib/ubuntu/apt.sh"
if [ "$has_desktop" == "true" ]; then
  source "$DOTFILES_HOME/lib/fonts.sh"
  source "$DOTFILES_HOME/lib/ubuntu/umake.sh"
  source "$DOTFILES_HOME/lib/code.sh"
fi
