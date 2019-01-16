#
# Cookbook:: apache
# Recipe:: webserver
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'apache2'

template '/var/www/html/index.html' do
  source 'index.html.erb'
  variables(
    :company_name => node['company']['name'],
    :hostname => node['hostname'],
    :total_memory => node['memory']['total']
  )
  action :create
end

service 'apache2' do
  action [:start, :enable]
end