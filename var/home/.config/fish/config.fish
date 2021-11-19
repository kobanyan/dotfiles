if status --is-interactive
  # asdf
  set -x ASDF_DIR (brew --prefix asdf)'/libexec'
  fish_add_path $ASDF_DIR/bin
  source $ASDF_DIR/lib/asdf.fish

  # pipenv
  fish_add_path ~/.local/bin

  # theme
  set -U tide_left_prompt_items pwd git newline character
  set -U tide_right_prompt_items status cmd_duration context jobs asdf_nodejs asdf_ruby asdf_python virtual_env asdf_java time

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
end
