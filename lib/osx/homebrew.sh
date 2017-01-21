#!/bin/bash

# Install homebrew
if hash brew 2>/dev/null; then
  log_warn "homebrew is already installed."
else
  log_info "Installing homebrew..."
  ruby -e "$(curl -fsSL ${HOMEBREW_URL:?})"
  if [ $? != 0 ]; then
    log_error "Failed to install homebrew."
    exit 1
  fi
fi

# Install bottles
log_info "Installing homebrew bottles..."
if [ ${#BOTTLES[@]} -gt 0 ]; then
  brew install ${BOTTLES[*]}
else
  log_warn "There are no bottles."
fi

# Install casks
log_info "Installing homebrew cask bottles..."
if [ ${#CASKS[@]} -gt 0 ]; then
  brew cask install ${CASKS[*]}
else
  log_warn "There are no cask bottles."
fi
