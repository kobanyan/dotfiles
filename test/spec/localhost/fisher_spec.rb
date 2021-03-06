require "spec_helper"

fisher_plugins = [
  "jethrokuan/z",
  "jethrokuan/fzf",
  "sijad/gitignore",
  "kobanyan/bullet-train-fish-theme",
  "kobanyan/ghr",
  "kobanyan/pet-completions",
]
fisher_plugins.each do |p|
  describe command("fish -c 'fisher ls | grep -q #{p}'") do
    its(:exit_status) { should eq 0 }
  end
end
