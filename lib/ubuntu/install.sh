#!/bin/bash

log_info "Start install process to ubuntu..."

# include variables
source "${DOTFILES_HOME:?}/var/ubuntu/directories.sh"
source "$DOTFILES_HOME/var/ubuntu/apt.sh"
source "$DOTFILES_HOME/var/ubuntu/homebrew.sh"

# setup repository
if [ "$has_desktop" == "true" ]; then
  source "$DOTFILES_HOME/lib/ubuntu/code.sh"
  source "$DOTFILES_HOME/lib/ubuntu/google-chrome.sh"
fi

# install
source "$DOTFILES_HOME/lib/ubuntu/apt.sh"
source "$DOTFILES_HOME/lib/ubuntu/homebrew.sh"
source "$DOTFILES_HOME/lib/ubuntu/docker.sh"
if [ "$has_desktop" == "true" ]; then
  source "$DOTFILES_HOME/lib/fonts.sh"
fi
