#!/bin/bash

log_info "Installing fisher..."

source "$DOTFILES_HOME/var/fisher.sh"

fish -c "curl -sL https://git.io/fisher | source && fisher install ${FISHER_PLUGINS[*]}"
