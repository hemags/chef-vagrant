#
# Cookbook Name:: user_creation
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

for user in node["user_creation"]["user"] do
	user "creating user from user_creation cookbook" do
		username user
		password "password"
		action :create
	end
end
