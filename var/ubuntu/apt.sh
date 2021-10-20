#!/bin/bash

PPAS=(
  "ppa:fish-shell/release-3"
)

PACKAGES=(
  fish
  vim
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
  zip # ghr
  tig
  net-tools
)

if [ "$has_desktop" == "true" ]; then
  PPAS+=(
    "ppa:ubuntu-desktop/ubuntu-make"
  )
  PACKAGES+=(
    chromium-browser
    ubuntu-make
    apt-transport-https # code
    code
  )
fi
