#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# execute 'apt-get update -y'

package 'tomcat' do
  action:install
end

service 'tomcat' do
  action:start
end

# cookbook_file 'usr/share/nginx/html/index.html' do
#	source "index.html"
#	action :create
# end
#
#
#
# template '/usr/share/nginx/html/index.html' do
#	source "index.html.erb"
#	action :create
# end
