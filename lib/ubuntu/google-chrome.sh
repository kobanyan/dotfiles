#!/bin/bash

log_info "Installing the repository and key for google-chrome ..."

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

GOOGLE_CHROME_LIST="/etc/apt/sources.list.d/google-chrome.list"
if [ -e "$GOOGLE_CHROME_LIST" ]; then
  log_warn "Skip writing $GOOGLE_CHROME_LIST. $GOOGLE_CHROME_LIST already exists"
else
  sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
fi
