#!/usr/local/bin/fish

source "$DOTFILES_HOME/var/fisher.fish"

# Install fisher
curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

# Install fisher plugins
fisher install $FISHER_PLUGINS
