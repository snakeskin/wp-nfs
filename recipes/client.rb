#
# Cookbook Name:: wp-nfs
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nfs::client4"


directory "#{node["wp"]["nfs"]}" do
	mode '0775'
    owner 'root'
    group 'root'
    action :create
    recursive true
end
	
mount "/var/www/wordpress" do
  device "#{share}:/var/www/wordpress"
  fstype "nfs"
  options "rw"
end