#!/bin/bash

log_info "Installing fonts..."

if [ -z "$DOTFILES_HOME" ]; then
  log_error '$DOTFILES_HOME is undefined.'
  exit 1
fi

source "$DOTFILES_HOME/var/fonts.sh"

if [ -z "$FONTS_DIR" ]; then
  log_error '$FONTS_DIR is undefined.'
  exit 1
fi

if [ -z "$FONT_URLS" ]; then
  log_error '$FONT_URLS is undefined.'
  exit 1
fi

for (( i = 0; i < ${#FONT_NAMES[@]}; ++i ))
do
  font_name=${FONT_NAMES[$i]}
  log_info "Installing font: $font_name ..."
  curl -sLo "$FONTS_DIR$font_name" "${FONT_URLS[$i]}"
done

# associative array is not supported mac?
# for font_name in ${!FONTS[@]}; do
#   echo curl -sLo "$FONTS_DIR/$font_name" "${FONTS[$font_name]}"
# done
 
