#!/bin/bash

log_info "Installing asdf..."

ASDF_HOME=~/.asdf
if [ ! -d "$ASDF_HOME/.git" ]; then
  git clone https://github.com/asdf-vm/asdf.git $ASDF_HOME
fi
git -C $ASDF_HOME fetch -p
git -C $ASDF_HOME checkout v0.6.0

mkdir -p ~/.config/fish/completions
cp $ASDF_HOME/completions/asdf.fish ~/.config/fish/completions
source $ASDF_HOME/asdf.sh

# nodejs
asdf plugin-add nodejs
bash $ASDF_HOME/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 10.13.0
asdf global nodejs 10.13.0

# ruby
asdf plugin-add ruby
asdf install ruby 2.4.5
asdf global ruby 2.4.5

# python
# https://pipenv-ja.readthedocs.io/ja/translate-ja/install.html#installing-pipenv
asdf plugin-add python https://github.com/tuvistavie/asdf-python.git
asdf install python 2.7.15
asdf global python 2.7.15
pip install --user pipenv
