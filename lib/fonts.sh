#!/bin/bash

log_info "Installing fonts..."

source "${DOTFILES_HOME:?}/var/fonts.sh"

for (( i = 0; i < ${#FONT_NAMES[@]}; ++i ))
do
  font_name=${FONT_NAMES[$i]}
  log_info "Installing font: $font_name ..."
  curl -sLo "${FONTS_DIR:?}$font_name" "${FONT_URLS[$i]}" --create-dirs
done

# associative array is not supported osx?
# for font_name in ${!FONTS[@]}; do
#   echo curl -sLo "$FONTS_DIR/$font_name" "${FONTS[$font_name]}"
# done

