require 'serverspec'

set :backend, :exec

def has_ubuntu_desktop
  o, e, s = Open3.capture3("dpkg --get-selections | grep -q desktop")
  s.exitstatus == 0
end
