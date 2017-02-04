require "spec_helper"

describe file("#{ENV['HOME']}/.vim/autoload/plug.vim") do
  it { should be_file }
end
