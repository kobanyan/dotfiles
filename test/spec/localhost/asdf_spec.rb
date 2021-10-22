require "spec_helper"

describe command("fish -C 'asdf --version'") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -C 'asdf current nodejs | grep -q '14.17.2''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -C 'asdf current ruby | grep -q '3.0.2''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -C 'asdf current python | grep -q '3.9.7''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -C 'pipenv --version'") do
  its(:exit_status) { should eq 0 }
end
