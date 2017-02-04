require "spec_helper"

describe command("fish -c 'pyenv --version'") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'pyenv versions | grep -q '2.7.13/envs/ansible2''") do
  its(:exit_status) { should eq 0 }
end

# describe command("fish -c 'pyenv shell ansible2; type ansible") do
#   its(:exit_status) { should eq 0 }
# end
