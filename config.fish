# test (cat /proc/sys/kernel/osrelease | grep Microsoft)

# set -x GOPATH "$HOME/.go"
# set -x PATH $PATH $GOPATH/bin
if test (uname) = "Darwin"
  set -x PYENV_ROOT "/usr/local/var/pyenv"
else
  set -x PATH "$HOME/.pyenv/bin" $PATH
end
status --is-interactive;
  and source (pyenv init - | psub);
    and source (pyenv virtualenv-init - | psub)

gi update-completions &
# theme
set -g BULLETTRAIN_NODEJS_SHOW true
# set -g BULLETTRAIN_GO_SHOW true
