#!/bin/bash

log_info "Installing preferences..."

cp -a "${DOTFILES_HOME:?}/var/mac/Preferences/." "${PREFERENCES_DIR:?}"
