require "spec_helper"

ppas=[
  "fish-shell/release-2",
]

packages=[
  "fish",
  "vim",
  "tmux",
  "docker-ce",
  "virtualbox",
  "vagrant",
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
  "tig",
]

desktop_ppas=[
  "ubuntu-desktop/ubuntu-make",
]

desktop_packages=[
  "chromium-browser",
  "ubuntu-make",
  "code",
]

if is_ubuntu?
  if has_desktop? then
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
