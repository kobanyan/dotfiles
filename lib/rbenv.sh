#!/bin/bash

log_info "Installing rbenv..."

git_clone_or_pull https://github.com/rbenv/rbenv.git ~/.rbenv
git_clone_or_pull https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
rbenv versions | grep 2.5.3 >/dev/null 2>&1
if [ $? != 0 ]; then
  rbenv install 2.5.3
fi
