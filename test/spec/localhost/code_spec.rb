require "spec_helper"

if os[:family] == "darwin" || (["ubuntu"].include?(os[:family]) && has_ubuntu_desktop)
  describe command("code --list-extensions | grep -q 'Shan.code-settings-sync'") do
    its(:exit_status) { should eq 0 }
  end
end
