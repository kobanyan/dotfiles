#!/bin/bash

log_info "Installing vim-plug..."

curl -fsSLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
