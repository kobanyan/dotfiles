#!/bin/bash

log_info "Start install process to mac..."

source "${DOTFILES_HOME:?}/var/mac/directories.sh"
source "$DOTFILES_HOME/var/mac/homebrew.sh"

source "$DOTFILES_HOME/lib/mac/homebrew.sh"
source "$DOTFILES_HOME/lib/mac/defaults.sh"
source "$DOTFILES_HOME/lib/mac/preferences.sh"

