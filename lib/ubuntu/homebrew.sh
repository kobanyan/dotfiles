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
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.profile
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
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
