#
# Cookbook Name:: win_ngnix
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

windows_package("nginx") do
	package_name "nginx"
	action [:install]
	retries 0
	retry_delay 2
	default_guard_interpreter :default
	declared_type :package
	cookbook_name "webserver"
	recipe_name "default"
	returns [0]
end

