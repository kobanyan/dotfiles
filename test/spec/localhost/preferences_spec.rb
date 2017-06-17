require "spec_helper"

preferences = [
  "com.googlecode.iterm2.plist",
]

if os[:family] == "darwin"
  preferences.each do |pref|
    describe file("#{ENV['HOME']}/Library/Preferences/#{pref}") do
      it { should be_file }
    end
  end
end
