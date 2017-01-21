#!/bin/bash

log_info "Installing preferences..."

cp -a "${DOTFILES_HOME:?}/var/osx/Preferences/." "${PREFERENCES_DIR:?}"
