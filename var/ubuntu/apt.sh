#!/bin/bash

PPAS=(
)

PACKAGES=(
  virtualbox
  vagrant
  make # pyenv
  build-essential # pyenv
  libssl-dev # pyenv
  zlib1g-dev # pyenv
  libbz2-dev # pyenv
  libreadline-dev # pyenv
  libsqlite3-dev # pyenv
  wget # pyenv
  curl # pyenv
  llvm # pyenv
  libncurses5-dev # pyenv
  xz-utils
  net-tools
)

if [ "$has_desktop" == "true" ]; then
  PACKAGES+=(
    google-chrome-stable
    snapd
    meld
  )
fi
