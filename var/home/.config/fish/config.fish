# asdf
source ~/.asdf/asdf.fish

# pipenv
fish_add_path ~/.local/bin

# theme
set -U tide_left_prompt_items pwd git newline character
set -U tide_right_prompt_items status cmd_duration context jobs asdf_nodejs asdf_ruby asdf_python asdf_golang time

# americanhanko/fish-spin
set -U XDG_CACHE_HOME ~/.cache

# direnv
direnv hook fish | source

# andoid-studio
if test -d ~/Library/Android/sdk
  set -x ANDROID_SDK ~/Library/Android/sdk
  fish_add_path ~/Library/Android/sdk/platform-tools
else
  set -x ANDROID_SDK ~/Android/sdk
end
