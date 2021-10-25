# asdf
source ~/.asdf/asdf.fish

# pipenv
set PATH ~/.local/bin $PATH

# theme
set -U tide_left_prompt_items pwd git newline character
set -U status cmd_duration context jobs asdf_nodejs asdf_ruby asdf_python asdf_golang time

# americanhanko/fish-spin
set -U XDG_CACHE_HOME $HOME/.cache

# direnv
direnv hook fish | source

# andoid-studio
set -x ANDROID_SDK $HOME/Library/Android/sdk
fish_add_path $HOME/Library/Android/sdk/platform-tools
