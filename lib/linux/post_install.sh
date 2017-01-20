#!/bin/bash

log_info "Start post install process to linux..."

# recreate font cache
fc-cache -f -v
