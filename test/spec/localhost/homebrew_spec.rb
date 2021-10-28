require "spec_helper"
taps = [
]
bottles = [
  "asdf",
  "awscli",
  "docker-completion",
  "fish",
  "fx",
  "fzf",
  "gh",
  "ghq",
  "jq",
  "peco",
  "pet",
  "q",
  "thefuck",
  "tig",
  "vim",
]
casks = [
]
ubuntu_bottles=[
  "aws-vault",
]
ubuntu_taps=[
]
ubuntu_casks=[
]
osx_bottles=[
  "bash",
  "git",
]
osx_taps=[
]
osx_casks=[
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
if is_ubuntu?
  bottles.concat(ubuntu_bottles)
  taps.concat(ubuntu_taps)
  casks.concat(ubuntu_casks)
elsif is_osx?
  bottles.concat(osx_bottles)
  taps.concat(osx_taps)
  casks.concat(osx_casks)
end

describe command("brew --version") do
  its(:exit_status) { should eq 0 }
end
taps.each do |tap|
  describe command("brew tap | grep -q #{tap}") do
    its(:exit_status) { should eq 0}
  end
end
bottles.each do |bottle|
  describe command("brew list | grep -q #{bottle}") do
    its(:exit_status) { should eq 0}
  end
end
casks.each do |cask|
  describe command("brew list --cask | grep -q #{cask}") do
    its(:exit_status) { should eq 0 }
  end
end
