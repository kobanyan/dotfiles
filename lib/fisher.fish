#!/usr/local/bin/fish

# Install fisher
curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

# Install fisher plugins
fish -c fisher
