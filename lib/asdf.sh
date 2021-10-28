#!/bin/bash

log_info "Installing asdf plugins..."

source $(brew --prefix asdf)/libexec/asdf.sh

log_info "Installing direnv..."
asdf plugin-add direnv
asdf install direnv latest
asdf global direnv latest

log_info "Installing nodejs..."
asdf plugin-add nodejs
asdf install nodejs 14.17.2
asdf global nodejs 14.17.2

log_info "Installing ruby..."
asdf plugin-add ruby
asdf install ruby 3.0.2
asdf global ruby 3.0.2

log_info "Installing python..."
asdf plugin-add python
asdf install python 3.9.7
asdf global python 3.9.7
# https://pipenv-ja.readthedocs.io/ja/translate-ja/install.html#installing-pipenv
pip install --user pipenv
