#!/bin/bash

log_info "Installing code extensions..."

if hash code 2>/dev/null; then
  code --install-extension Shan.code-settings-sync
else
  log_warn "code is not installed"
fi
