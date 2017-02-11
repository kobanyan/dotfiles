#!/bin/bash

DOTFILES_REPO="https://github.com/kobanyan/dotfiles"
DOTFILES_HOME=${DOTFILES_HOME:-"$HOME/src/github.com/kobanyan/dotfiles"}

REQUIRED_PACKAGES_OSX=(
  curl
  git
  ruby
)

REQUIRED_PACKAGES_UBUNTU=(
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

function git_clone_or_pull() {
  if [ -d "$2/.git" ] || git -C $2 rev-parse --git-dir >/dev/null 2>&1; then
    git -C $2 pull
  else
    git clone $1 $2
  fi
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
  "Darwin")
    OS="osx"
    ;;
  "Linux")
    if cat /etc/debian_version > /dev/null &2> /dev/null; then
      if [[ -f /proc/sys/kernel/osrelease && -n $(cat /proc/sys/kernel/osrelease | grep Microsoft) ]]; then
        OS="uow"
      else
        if hash lsb_release &2> /dev/null; then
          OS=$(lsb_release -i | cut -f2)
          OS=${OS,,}
          if dpkg --get-selections | grep -q "$OS-desktop"; then
            has_desktop="true"
          fi
        fi
      fi
    fi
    if [ "$OS" == "" ]; then
      log_error "Not supported Linux distribution!"
      exit 1
    fi
    ;;
  *)
    log_error "Not supported OS! `uname`"
    exit 1
esac
log_info "OS = $OS"
log_info "has_desktop = $has_desktop"

case "$OS" in
  "osx")
    check_if_do_preinstall ${REQUIRED_PACKAGES_OSX[@]}
    if [ "$do_preinstall" == "true" ]; then
      log_error "Required packages do not exist! Can not install!"
      exit 1
    fi
    ;;
  "ubuntu" | "elementary" | "uow")
    check_if_do_preinstall ${REQUIRED_PACKAGES_UBUNTU[@]}
    if [ "$do_preinstall" == "true" ]; then
      log_info "Installing required packages with package manager..."
      sudo apt update
      sudo apt install -y ${REQUIRED_PACKAGES_UBUNTU[*]}
    fi
    ;;
  *)
    log_error "Unknown OS! $OS"
    exit 1
esac
log_info "Finished precheck."

log_info "Start to setup..."

log_info "Cloning $DOTFILES_REPO to $DOTFILES_HOME"
git_clone_or_pull $DOTFILES_REPO $DOTFILES_HOME

case "$OS" in
  "osx")
    source "$DOTFILES_HOME/lib/osx/install.sh"
    ;;
  "ubuntu" | "elementary" | "uow")
    source "$DOTFILES_HOME/lib/ubuntu/install.sh"
    ;;
  *)
    log_error "Unknown OS! $OS"
    exit 1
esac

source "$DOTFILES_HOME/lib/nvm.sh"
source "$DOTFILES_HOME/lib/pyenv.sh"
source "$DOTFILES_HOME/lib/rbenv.sh"
source "$DOTFILES_HOME/lib/fisher.sh"
source "$DOTFILES_HOME/lib/vim-plug.sh"
source "$DOTFILES_HOME/lib/ghr.sh"
source "$DOTFILES_HOME/lib/dotfiles.sh"

case "$OS" in
  "ubuntu" | "elementary")
    source "$DOTFILES_HOME/lib/ubuntu/post_install.sh"
esac

log_info "Finished setup."
