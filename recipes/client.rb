#
# Cookbook Name:: wp-nfs
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nfs::_idmap"


directory "/var/www/wordpress" do
	mode '0775'
    owner 'root'
    group 'root'
    action :create
    recursive true
	not_if { ::File.directory?("/var/www/wordpress") }
end
	

mount "/var/www/wordpress" do
  device "#{node["wp"]["nfs"]}:/var/www/wordpress"
  fstype "nfs"
  options "rw"
end