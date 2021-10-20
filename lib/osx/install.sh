#!/bin/bash

log_info "Start install process to osx..."

# include variables
source "${DOTFILES_HOME:?}/var/osx/directories.sh"
source "$DOTFILES_HOME/var/osx/homebrew.sh"

# install
source "$DOTFILES_HOME/lib/osx/homebrew.sh"
source "$DOTFILES_HOME/lib/osx/defaults.sh"
source "$DOTFILES_HOME/lib/osx/preferences.sh"

source "$DOTFILES_HOME/lib/fonts.sh"
