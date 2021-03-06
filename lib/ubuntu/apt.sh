#!/bin/bash

# Install PPAs
log_info "Installing additional repositories..."
if [ ${#PPAS[@]} -gt 0 ]; then
  for ppa in "${PPAS[@]}"; do
    sudo add-apt-repository -y $ppa
  done
else
  log_warn "There are no additional repositories."
fi

# Install packages
log_info "Installing packages..."
if [ ${#PACKAGES[@]} -gt 0 ]; then
  sudo apt update
  sudo apt install -y ${PACKAGES[*]}
else
  log_warn "There are no packages."
fi
