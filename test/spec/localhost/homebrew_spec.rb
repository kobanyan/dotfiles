require "spec_helper"

bottles = [
  "bash",
  "git",
  "fish",
  "vim",
  "tmux",
  "tig",
]
casks = [
  "google-chrome",
  "virtualbox",
  "karabiner",
  "docker-toolbox",
  "visual-studio-code",
  "iterm2",
  "vagrant",
  "hyperswitch"
]

if os[:family] == "darwin"
  describe command("brew --version") do
    its(:exit_status) { should eq 0 }
  end
  bottles.each do |bottle|
    describe package(bottle) do
      it { should be_installed }
    end
  end
  casks.each do |cask|
    describe command("brew cask list | grep -q #{cask}") do
      its(:exit_status) { should eq 0 }
    end
  end
end
