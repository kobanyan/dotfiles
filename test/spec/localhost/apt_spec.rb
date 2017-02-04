require "spec_helper"

ppas=[
  "ubuntu-desktop/ubuntu-make",
  "fish-shell/release-2",
]

packages=[
  "fish",
  "vim",
  "tmux",
  "chromium-browser",
  "virtualbox",
  "docker",
  "ubuntu-make",
  "libgconf-2-4",
  "make",
  "build-essential",
  "libssl-dev",
  "zlib1g-dev",
  "libbz2-dev",
  "libreadline-dev",
  "libsqlite3-dev",
  "wget",
  "curl",
  "llvm",
  "libncurses5-dev",
  "xz-utils",
  "zip",
]

if ["ubuntu"].include?(os[:family])
  ppas.each do |p|
    describe ppa(p) do
      it { should exist }
      it { should be_enabled }
    end
  end
  packages.each do |p|
    describe package(p) do
      it { should be_installed }
    end
  end
end
