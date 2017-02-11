#!/bin/bash

log_info "Start making code symlink ..."

mkdir -p "$HOME/.local/bin"
ln -s "$HOME/.local/share/umake/ide/visual-studio-code/bin/code" "$HOME/.local/bin/code"
