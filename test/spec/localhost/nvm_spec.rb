require "spec_helper"

describe command("fish -c 'nvm --version'") do
  its(:exit_status) { should eq 0 }
end
