#!/bin/bash

log_info "Start post install process to linux..."

if [ "$has_desktop" == "true" ]; then
  # recreate font cache
  fc-cache -f -v
fi
