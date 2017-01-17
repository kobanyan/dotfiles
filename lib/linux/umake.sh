#!/bin/bash

source "${DOTFILES_HOME:?}/var/linux/umake.sh"

# Install umake packages
log_info "Installing umake packages..."

if [ ${#UMAKE_PACKAGES[@]} -gt 0 ]; then
  for p in "${UMAKE_PACKAGES[@]}"; do
    umake $p
  done
else
  log_warn "There are no umake packages."
fi
