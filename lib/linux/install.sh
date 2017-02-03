#!/bin/bash

log_info "Start install process to linux..."

source "${DOTFILES_HOME:?}/var/linux/directories.sh"
source "$DOTFILES_HOME/var/linux/apt.sh"

source "$DOTFILES_HOME/lib/apt.sh"
source "$DOTFILES_HOME/lib/fonts.sh"

source "$DOTFILES_HOME/lib/linux/umake.sh"
source "$DOTFILES_HOME/lib/code.sh"
