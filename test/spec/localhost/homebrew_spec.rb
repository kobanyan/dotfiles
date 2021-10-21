require "spec_helper"
taps = [
]
bottles = [
  "awscli",
  "bash",
  "direnv",
  "fish",
  "fx",
  "fzf",
  "gh",
  "ghq",
  "git",
  "jq",
  "peco",
  "vim",
  "tig",
]
casks = [
  "android-studio",
  "aws-vault",
  "dbeaver-community",
  "docker",
  "google-chrome",
  "hyper",
  "hyperswitch",
  "karabiner-elements",
  "meld",
  # "nosql-workbench",
  "postman",
  "realforce",
  "vagrant",
  "virtualbox",
  "visual-studio-code",
]

if os[:family] == "darwin"
  describe command("brew --version") do
    its(:exit_status) { should eq 0 }
  end
  taps.each do |tap|
    describe command("brew tap | grep -q #{tap}") do
      its(:exit_status) { should eq 0}
    end
  end
  bottles.each do |bottle|
    describe package(bottle) do
      it { should be_installed }
    end
  end
  casks.each do |cask|
    describe command("brew list --cask | grep -q #{cask}") do
      its(:exit_status) { should eq 0 }
    end
  end
end
