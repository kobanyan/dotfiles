#!/bin/bash

log_info "Installing rbenv..."

git_clone_or_pull https://github.com/rbenv/rbenv.git ~/.rbenv
git_clone_or_pull https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
