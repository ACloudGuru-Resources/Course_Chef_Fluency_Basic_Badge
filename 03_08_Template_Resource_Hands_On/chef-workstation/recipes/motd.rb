#
# Cookbook:: chef-workstation
# Recipe:: motd
#
# Copyright:: 2018, The Authors, All Rights Reserved.

template '/etc/motd' do
  source 'motd.erb'
  variables(:ipaddress => node['ipaddress'])
end