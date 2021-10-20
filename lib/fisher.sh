#!/bin/bash

log_info "Installing fisher..."

# Install fisher
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"

# Install fisher plugins
fish -c "fisher update"
