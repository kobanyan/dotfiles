require "spec_helper"

describe command("fish -c 'source $(brew --prefix asdf)/libexec/asdf.fish; asdf --version'") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'source $(brew --prefix asdf)/libexec/asdf.fish; asdf current direnv | grep -q '#{ENV['HOME']}/.tool-versions''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'source $(brew --prefix asdf)/libexec/asdf.fish; asdf current nodejs | grep -q '14.17.2''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'source $(brew --prefix asdf)/libexec/asdf.fish; asdf current ruby | grep -q '3.0.2''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'source $(brew --prefix asdf)/libexec/asdf.fish; asdf current python | grep -q '3.9.7''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'fish_add_path ~/.local/bin; pipenv --version'") do
  its(:exit_status) { should eq 0 }
end
