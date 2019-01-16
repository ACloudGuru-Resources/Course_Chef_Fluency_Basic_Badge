#
# Cookbook:: chef-workstation
# Recipe:: motd
#
# Copyright:: 2018, The Authors, All Rights Reserved.

file '/etc/motd' do
  content "Hello, world! This is the message of the day
  My IPADDRESS is #{node['ipaddress']}
  The total memory of this server is #{node['memory']['total']}"
end