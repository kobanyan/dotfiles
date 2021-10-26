require "spec_helper"

fisher_plugins = [
  "decors/fish-ghq",
  "IlanCosman/tide",
  "jethrokuan/z",
  "jethrokuan/fzf",
  "jorgebucaran/fisher",
  "kobanyan/tide-asdf-items",
  "kobanyan/pet-completions",
  "laughedelic/pisces",
  "oh-my-fish/plugin-thefuck",
  "sijad/gitignore",
]
fisher_plugins.each do |p|
  describe command("fish -c 'fisher ls | grep -q #{p}'") do
    its(:exit_status) { should eq 0 }
  end
end
