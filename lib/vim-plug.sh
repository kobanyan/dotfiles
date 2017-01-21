#!/bin/bash

log_info "Installing vim-plug..."

curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
