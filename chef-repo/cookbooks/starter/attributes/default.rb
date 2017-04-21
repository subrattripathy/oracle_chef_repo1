# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Set a default name
#default["starter_name"] = "Sam Doe"

# For further information, see the Chef documentation (https://docs.chef.io/essentials_cookbook_attribute_files.html).
default['starter']['git_instller'] = 'Git-2.5.3-64-bit.exe'


if node['platform']=="windows"
  default['starter']['dir']='C:\public_html'
  default['starter']['group']='Administrators'
  default['starter']['user']='Administrators'
  default['starter']['mode']='0755'
end

if node['platform']=="centos"
   default['starter']['dir']='/var/www/customer1s/public_html'
  default['starter']['group']='root'
  default['starter']['user']='root'
  default['starter']['mode']='0755'
end

default['starter']['sudo']['groups'] = [ 'sysadmin', 'wheel', 'admin' ]
default['starter']['sudo']['users']  = [ 'jerry', 'greg']
