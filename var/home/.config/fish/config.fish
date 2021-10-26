# asdf
source ~/.asdf/asdf.fish

# pipenv
pipenv --completion | source

# theme
set -U tide_left_prompt_items pwd git newline character
set -U tide_right_prompt_items status cmd_duration context jobs asdf_nodejs asdf_ruby asdf_python asdf_golang time

# direnv
direnv hook fish | source

# andoid-studio
if test -d ~/Library/Android/sdk
  set -x ANDROID_SDK ~/Library/Android/sdk
  fish_add_path ~/Library/Android/sdk/platform-tools
else
  set -x ANDROID_SDK ~/Android/sdk
end
