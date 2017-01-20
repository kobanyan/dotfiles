#!/bin/bash

DOTFILES_REPO="https://github.com/kobanyan/dotfiles"
DOTFILES_HOME="$HOME/src/github.com/kobanyan/dotfiles"

# precheck

REQUIRED_PACKAGES_MAC=(
  curl
  git
  ruby
)

REQUIRED_PACKAGES_LINUX=(
  curl
  git
  software-properties-common
  python-software-properties
)

function check_if_do_preinstall() {
  local packages=($@)
  for p in ${packages[@]}; do
    if ! hash $p 2>/dev/null; then
      do_preinstall="true"
    fi
  done
}

echo "Starting precheck..."
case `uname` in
  "Darwin" )
    check_if_do_preinstall ${REQUIRED_PACKAGES_MAC[@]}
    if [ "$do_preinstall" == "true" ]; then
      echo "Required packages do not exist! Can not install!"
      exit 1
    fi;;
  "Linux"  )
    check_if_do_preinstall ${REQUIRED_PACKAGES_LINUX[@]}
    if [ "$do_preinstall" == "true" ]; then
      echo "Installing required packages with package manager..."
      sudo apt update
      sudo apt install -y  ${REQUIRED_PACKAGES_LINUX[*]}
    fi;;
esac
echo "Finished precheck."

echo "Cloning $DOTFILES_REPO to $DOTFILES_HOME"
if [ -d "$DOTFILES_HOME/.git" ] || git -C $DOTFILES_HOME rev-parse --git-dir >/dev/null 2>&1; then
  git -C $DOTFILES_HOME pull
else
  git clone $DOTFILES_REPO $DOTFILES_HOME
fi

source "$DOTFILES_HOME/lib/utils.sh"

case `uname` in
  "Darwin" )
    source "$DOTFILES_HOME/lib/mac/install.sh";;
  "Linux"  )
    source "$DOTFILES_HOME/lib/linux/install.sh";;
  "*"      )
    log_error "Not supported."
    exit 1;;
esac

source "$DOTFILES_HOME/lib/fonts.sh"
source "$DOTFILES_HOME/lib/fisher.sh"
source "$DOTFILES_HOME/lib/dotfiles.sh"

case `uname` in
  "Linux"  )
    source "$DOTFILES_HOME/lib/linux/post_install.sh";;
esac
