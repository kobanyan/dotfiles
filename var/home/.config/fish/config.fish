# test (cat /proc/sys/kernel/osrelease | grep Microsoft)

# set -x GOPATH "$HOME/.go"
# set -x PATH $PATH $GOPATH/bin
set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive;
  and source (pyenv init - | psub);
    and source (pyenv virtualenv-init - | psub)

# gi update-completions &
# theme
set -g BULLETTRAIN_NODEJS_SHOW true
# set -g BULLETTRAIN_GO_SHOW true

set -g GBD_SELECTOR fzf
