#!/bin/bash

# http://qiita.com/djmonta/items/17531dde1e82d9786816

log_info "Installing preferences of com.apple.finder..."

# Show the hidden files
defaults write com.apple.finder AppleShowAllFiles YES
