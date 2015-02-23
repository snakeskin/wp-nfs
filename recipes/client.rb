#
# Cookbook Name:: wp-nfs
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nfs::client4"

mount "/var/www/wordpress" do
  device "node["wp"]["nfs"]:/var/www/wordpress"
  fstype "nfs"
  options "rw"
end