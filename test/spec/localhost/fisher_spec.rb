require "spec_helper"

fisher_plugins = [
  "jethrokuan/z",
  "jethrokuan/fzf",
  "sijad/gitignore",
  "IlanCosman/tide",
  "kobanyan/tide-asdf-items",
  "kobanyan/pet-completions",
  "jorgebucaran/fisher",
]
fisher_plugins.each do |p|
  describe command("fish -c 'fisher ls | grep -q #{p}'") do
    its(:exit_status) { should eq 0 }
  end
end
