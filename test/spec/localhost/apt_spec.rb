require "spec_helper"

ppas=[
]

packages=[
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
  "net-tools",
]

desktop_ppas=[
]

desktop_packages=[
  "google-chrome-stable",
  "snapd",
  "meld",
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
