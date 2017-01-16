#!/bin/bash

DOTFILES_REPO="https://github.com/kobanyan/dotfiles"
DOTFILES_HOME="$HOME/src/github.com/kobanyan/dotfiles"

# clone repository
# git clone $DOTFILES_REPO $DOTFILES_HOME

source "$DOTFILES_HOME/lib/utils.sh"

case `uname` in
  "Darwin" ) source "$DOTFILES_HOME/lib/mac/install.sh";;
  "Linux"  ) source "$DOTFILES_HOME/lib/linux/install.sh";;
  "*"      ) exit 1;;
esac 

source "$DOTFILES_HOME/lib/homebrew.sh"
source "$DOTFILES_HOME/lib/fonts.sh"
source "$DOTFILES_HOME/lib/fisher.sh"
source "$DOTFILES_HOME/lib/dotfiles.sh"