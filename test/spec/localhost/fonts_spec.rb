require "spec_helper"

fonts=[
 "RictyDiminished-Regular-Powerline.ttf",
]

if os[:family] == "darwin"
  fonts.each do |f|
    describe file("/Library/Fonts/#{f}") do
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
