#!/bin/bash

COLOR_ERROR="\033[1;31m"
COLOR_WARN="\033[1;33m"
COLOR_RESET="\033[0m"

function now() {
  date "+%Y-%m-%d %H:%M:%S"
}

function log_info() {
  echo -e "`now` [INFO] $@"
}

function log_warn() {
  echo -e "$COLOR_WARN`now` [WARN] $@$COLOR_RESET"
}

function log_error() {
  echo -e "$COLOR_ERROR`now` [ERROR] $@$COLOR_RESET"
}