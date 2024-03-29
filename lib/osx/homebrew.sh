#!/bin/bash

# Install homebrew
if hash brew 2>/dev/null; then
  log_warn "homebrew is already installed."
else
  log_info "Installing homebrew..."
  CI=true /bin/bash -c "$(curl -fsSL ${HOMEBREW_URL:?})"
  if [ $? != 0 ]; then
    log_error "Failed to install homebrew."
    exit 1
  fi
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install taps
log_info "Installing homebrew taps..."
for (( i = 0; i < ${#TAPS[@]}; ++i ));
do
  tap=${TAPS[$i]}
  log_info "Installing tap: $tap ..."
  brew tap $tap
done

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
  brew install --cask ${CASKS[*]}
else
  log_warn "There are no cask bottles."
fi
