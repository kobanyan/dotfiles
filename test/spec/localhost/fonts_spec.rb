require "spec_helper"

fonts=[
  "Ricty Diminished Regular for Powerline.ttf",
  "Ricty Diminished Regular Nerd Font Complete.ttf",
]

if is_osx?
  fonts.each do |f|
    describe file("#{ENV['HOME']}/Library/Fonts/#{f}") do
      it { should be_file }
    end
  end
elsif is_ubuntu? && has_desktop?
  fonts.each do |f|
    describe file("#{ENV['HOME']}/.fonts/#{f}") do
      it { should be_file }
    end
  end
end
