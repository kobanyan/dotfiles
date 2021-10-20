# asdf
source ~/.asdf/asdf.fish

# pipenv
set PATH ~/.local/bin $PATH

# theme
set -g BULLETTRAIN_NODEJS_SHOW true

# americanhanko/fish-spin
set -U XDG_CACHE_HOME $HOME/.cache

# direnv
direnv hook fish | source

# andoid-studio
set -x ANDROID_SDK $HOME/Library/Android/sdk
fish_add_path $HOME/Library/Android/sdk/platform-tools
