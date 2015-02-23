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
  device node["wp"]["nfs"]
  mount_point "/var/www/wordpress"
  fstype "ext4"
  action :mount
end