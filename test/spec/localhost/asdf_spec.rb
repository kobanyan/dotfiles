require "spec_helper"

describe command("fish -c 'asdf --version'") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'asdf current nodejs | grep -q '10.13.0''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'asdf current ruby | grep -q '2.4.5''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'asdf current python | grep -q '2.7.15''") do
  its(:exit_status) { should eq 0 }
end

describe command("fish -c 'pipenv --version'") do
  its(:exit_status) { should eq 0 }
end
