require "spec_helper"

packages=[
  "android-studio",
  "code",
  "dbeaver-ce",
  "postman",
]

if is_ubuntu? && has_desktop?
  packages.each do |p|
    describe command("snap list #{p}") do
      its(:exit_status) { should eq 0 }
    end
  end
end
