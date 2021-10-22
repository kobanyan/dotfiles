#!/bin/bash
log_info "Installing snap packages..."

source "${DOTFILES_HOME:?}/var/snap.sh"

for (( i = 0; i < ${#SNAP_PACKAGES[@]}; ++i ))
do
  snap_package=${SNAP_PACKAGES[$i]}
  log_info "Installing snap package: $snap_package ..."
  sudo snap install $snap_package
done

for (( i = 0; i < ${#SNAP_CLASSIC_PACKAGES[@]}; ++i ))
do
  snap_classic_package=${SNAP_CLASSIC_PACKAGES[$i]}
  log_info "Installing snap classic package: $snap_classic_package ..."
  sudo snap install $snap_classic_package --clasic
done
