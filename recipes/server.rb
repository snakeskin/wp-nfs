#
# Cookbook Name:: wp-nfs
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nfs::server4"

nfs_export "/var/www/wordpress" do
  network '192.168.50.0/24'
  anonuser "root"
  anongroup "root"
  writeable true 
  sync true
  options ['no_root_squash']
end