#!/bin/bash

log_info "Installing asdf..."

ASDF_HOME=$HOME/.asdf
if [ ! -d "$ASDF_HOME/.git" ]; then
  git clone https://github.com/asdf-vm/asdf.git $ASDF_HOME
fi
git -C $ASDF_HOME fetch -p
git -C $ASDF_HOME checkout v0.8.1

if [ ! -e "$HOME/.config/fish/completions/asdf.fish" ]; then
  mkdir -p $HOME/.config/fish/completions
  ln -s $ASDF_HOME/completions/asdf.fish $HOME/.config/fish/completions
fi
source $ASDF_HOME/asdf.sh

log_info "Installing direnv..."
asdf plugin-add direnv
asdf install direnv latest
asdf global direnv latest

log_info "Installing nodejs..."
asdf plugin-add nodejs
bash $ASDF_HOME/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 14.17.2
asdf global nodejs 14.17.2

log_info "Installing ruby..."
asdf plugin-add ruby
asdf install ruby 3.0.2
asdf global ruby 3.0.2

log_info "Installing python..."
# https://pipenv-ja.readthedocs.io/ja/translate-ja/install.html#installing-pipenv
asdf plugin-add python https://github.com/tuvistavie/asdf-python.git
asdf install python 3.9.7
asdf global python 3.9.7
pip install --user pipenv
