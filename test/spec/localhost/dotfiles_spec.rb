require "spec_helper"

dotfiles=[
  ".config/fish/config.fish",
  ".editorconfig",
  ".gitconfig",
  ".vimrc",
  ".tigrc"
]

dotfiles.each do |f|
  describe file("#{ENV['HOME']}/#{f}") do
    it { should be_symlink }
  end
end
