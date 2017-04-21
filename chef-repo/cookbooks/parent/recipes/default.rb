#
# Cookbook Name:: parent
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe'child::default'
Chef::Log.info("I am in Parent and I have child also")

template '/home/vagrant/sudoers_parent' do
  source 'sudeors1.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['starter']['sudo']['groups'],
    sudoers_users: node['starter']['sudo']['users']
      })
end
