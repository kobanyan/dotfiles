require "spec_helper"

if is_ubuntu?
  describe command("docker") do
    its(:exit_status) { should eq 0 }
  end
  describe command("docker compose") do
    its(:exit_status) { should eq 0 }
  end
end
