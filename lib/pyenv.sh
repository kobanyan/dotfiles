#!/bin/bash

log_info "Installing pyenv..."

curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

log_info "Installing python environments..."

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv versions | grep 2.7.13 >/dev/null 2>&1
if [ $? != 0 ]; then
  pyenv install 2.7.13
  pyenv virtualenv 2.7.13 ansible2
  pyenv global ansible2
  pip install ansible
fi
pyenv global system
