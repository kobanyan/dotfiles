require "spec_helper"

ppas=[
  "fish-shell/release-2",
]

packages=[
  "fish",
  "vim",
  "tmux",
  "virtualbox",
  "vagrant",
  "docker",
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

desktop_ppas=[
  "ubuntu-desktop/ubuntu-make",
]

desktop_packages=[
  "chromium-browser",
  "ubuntu-make",
  "libgconf-2-4",
]

if ["ubuntu"].include?(os[:family])
  if has_ubuntu_desktop then
    ppas.concat(desktop_ppas)
    packages.concat(desktop_packages)
  end
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
