require "spec_helper"

describe command("fish -c 'rbenv --version'") do
  its(:exit_status) { should eq 0 }
end

# describe command("fish -c 'rbenv versions | grep -q 2.2.5'") do
#   its(:exit_status) { should eq 0 }
# end
