#!/bin/bash

log_info "Installing fisherman..."

cat "${DOTFILES_HOME:?}/lib/fisher.fish" | DOTFILES_HOME=$DOTFILES_HOME fish
