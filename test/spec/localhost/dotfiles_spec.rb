require "spec_helper"

dotfiles=[
  ".config/fish/config.fish",
  ".config/fish/fishfile",
  ".config/karabiner/karabiner.json",
  ".config/pet/config.toml",
  ".config/pet/snippet.toml",
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
