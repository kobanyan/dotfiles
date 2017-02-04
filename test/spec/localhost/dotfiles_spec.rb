require "spec_helper"

dotfiles=[
  ".config/fish/config.fish",
  ".editorconfig",
  ".gitconfig",
  ".vimrc"
]

dotfiles.each do |f|
  describe file("#{ENV['HOME']}/#{f}") do
    it { should be_symlink }
  end
end
