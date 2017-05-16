require "spec_helper"

fisher_plugins = [
  "z",
  "nvm",
  "pyenv",
  "rbenv",
  "fzf",
  "gitignore",
  "fishkit",
  "bullet-train-fish-theme",
  "ghr",
]
fisher_plugins.each do |p|
  describe command("fish -c 'fisher ls | grep -q #{p}'") do
    its(:exit_status) { should eq 0 }
  end
end
