require "spec_helper"

commands = [
  "peco --version",
  "fzf --version",
  "ghq --version",
  "jq --version"
]

commands.each do |c|
  describe command("fish -c '#{c}'") do
    its(:exit_status) { should eq 0 }
  end
end
