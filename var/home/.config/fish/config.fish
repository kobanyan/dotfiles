# pyenv
set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive;
  and source (pyenv init - | psub);
    and source (pyenv virtualenv-init - | psub)

# gbs
set -g GBS_SELECTOR fzf

# theme
set -g BULLETTRAIN_NODEJS_SHOW true
