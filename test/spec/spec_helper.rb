require 'serverspec'

set :backend, :exec

def is_osx?
  os[:family] == "darwin"
end

def is_ubuntu?
  os[:family] == "ubuntu" || os[:family] == "elementary"
end

def has_desktop?
  if is_osx?
    return true
  elsif is_ubuntu?
    o, e, s = Open3.capture3("dpkg --get-selections | grep -q #{os[:family]}-desktop")
    s.exitstatus == 0
  else
    return false
  end
end
