require "spec_helper"

describe command("fish -c 'asdf --version'") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'asdf current nodejs | grep -q '14.17.2''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'asdf current ruby | grep -q '3.0.2''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'asdf current python | grep -q '3.9.7''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'pipenv --version'") do
  its(:exit_status) { should eq 0 }
end
