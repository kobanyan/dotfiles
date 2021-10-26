# asdf
# source ~/.asdf/asdf.fish
fish_add_path ~/.asdf/bin
source ~/.asdf/lib/asdf.fish # just load the asdf wrapper function

# pipenv
fish_add_path ~/.local/bin

# theme
set -U tide_left_prompt_items pwd git newline character
set -U tide_right_prompt_items status cmd_duration context jobs asdf_nodejs asdf_ruby asdf_python asdf_golang time

# direnv
asdf exec direnv hook fish | source
alias direnv='asdf exec direnv'

# andoid-studio
if test -d ~/Library/Android/sdk
  set -x ANDROID_SDK ~/Library/Android/sdk
  fish_add_path ~/Library/Android/sdk/platform-tools
else
  set -x ANDROID_SDK ~/Android/sdk
end
