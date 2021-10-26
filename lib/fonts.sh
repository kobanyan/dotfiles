#!/bin/bash

log_info "Installing fonts..."

cp -a "${DOTFILES_HOME:?}/var/fonts/." "${FONTS_DIR:?}"
