#!/bin/bash

log_info "Installing dotfiles..."

dotfile_home="${DOTFILES_HOME:?}/var/home"
for file in `find "$dotfile_home" -type f`
do
  log_info "Installing ${file#$dotfile_home}..."
  dest="$HOME${file#$dotfile_home}"
  dest_dir="${dest%/*}"
  mkdir -p $dest_dir
  ln -sf $file $dest
done
