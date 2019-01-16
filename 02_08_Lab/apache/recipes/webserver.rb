#
# Cookbook:: apache
# Recipe:: webserver
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'apache2'

file '/var/www/html/index.html' do
  content 'Hello, world!'
  action :create
end

service 'apache2' do
  action [:start, :enable]
end