require "spec_helper"

dotfiles=[
  ".config/direnv/direnvrc",
  ".config/fish/config.fish",
  ".config/karabiner/karabiner.json",
  ".config/pet/config.toml",
  ".config/pet/snippet.toml",
  ".editorconfig",
  ".envrc",
  ".gitconfig",
  ".vimrc",
  ".tigrc"
]
osx_dotfiles=[
  ".config/fish/conf.d/0-env.fish",
  ".hyper.js"
]
if is_osx?
  dotfiles.concat(osx_dotfiles)
end

dotfiles.each do |f|
  describe file("#{ENV['HOME']}/#{f}") do
    it { should be_symlink }
  end
end
