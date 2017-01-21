#!/bin/bash

DOTFILES_REPO="https://github.com/kobanyan/dotfiles"
DOTFILES_HOME="$HOME/src/github.com/kobanyan/dotfiles"

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

# -----------------------------------------------------------------------------

COLOR_INFO="\033[34;1m"
COLOR_ERROR="\033[31;1m"
COLOR_WARN="\033[33;1m"
COLOR_RESET="\033[0m"

function now() {
  date "+%Y-%m-%d %H:%M:%S"
}

function log_info() {
  echo -e "$COLOR_INFO`now` [INFO] $@$COLOR_RESET"
}

function log_warn() {
  echo -e "$COLOR_WARN`now` [WARN] $@$COLOR_RESET"
}

function log_error() {
  echo -e "$COLOR_ERROR`now` [ERROR] $@$COLOR_RESET"
}

function check_if_do_preinstall() {
  local packages=($@)
  for p in ${packages[@]}; do
    if ! hash $p 2>/dev/null; then
      do_preinstall="true"
    fi
  done
}

# -----------------------------------------------------------------------------

log_info "Start precheck..."
case `uname` in
  "Darwin" )
    check_if_do_preinstall ${REQUIRED_PACKAGES_MAC[@]}
    if [ "$do_preinstall" == "true" ]; then
      log_error "Required packages do not exist! Can not install!"
      exit 1
    fi;;
  "Linux"  )
    if [ -f /etc/lsb-release ]; then
      check_if_do_preinstall ${REQUIRED_PACKAGES_LINUX[@]}
      if [ "$do_preinstall" == "true" ]; then
        log_info "Installing required packages with package manager..."
        sudo apt update
        sudo apt install -y  ${REQUIRED_PACKAGES_LINUX[*]}
      fi
    else
      log_error "Not supported Linux distribution!"
    fi;;
esac
log_info "Finished precheck."

log_info "Start to setup..."

log_info "Cloning $DOTFILES_REPO to $DOTFILES_HOME"
if [ -d "$DOTFILES_HOME/.git" ] || git -C $DOTFILES_HOME rev-parse --git-dir >/dev/null 2>&1; then
  git -C $DOTFILES_HOME pull
else
  git clone $DOTFILES_REPO $DOTFILES_HOME
fi

case `uname` in
  "Darwin" )
    source "$DOTFILES_HOME/lib/mac/install.sh";;
  "Linux"  )
    source "$DOTFILES_HOME/lib/linux/install.sh";;
esac

source "$DOTFILES_HOME/lib/fonts.sh"
source "$DOTFILES_HOME/lib/fisher.sh"
source "$DOTFILES_HOME/lib/code.sh"
source "$DOTFILES_HOME/lib/vim-plug.sh"
source "$DOTFILES_HOME/lib/dotfiles.sh"

case `uname` in
  "Linux"  )
    source "$DOTFILES_HOME/lib/linux/post_install.sh";;
esac

log_info "Finished setup."
