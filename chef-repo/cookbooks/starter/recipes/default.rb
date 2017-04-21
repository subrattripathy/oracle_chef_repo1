# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

#log "Welcome to Chef, #{node["starter_name"]}!" do
#  level :info
#end
Chef::Log.info("I am in version 1.0.1")

#remote_file 'C:/chef/Git-2.12.2.2-64-bit.exe' do
#  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
#  action :create
#end



# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html

#execute 'GIT_INSTALLATION' do
  #command 'C:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
#end


#remote_file "C:/chef/Git-2.12.2.2-64-bit.exe" do
#  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
#  action :create
#  not_if do (File.exists?('C:\Program Files\Git\git-cmd.exe')) end
#


#  remote_file "C:/chef/#{node['starter']['git_instller']}" do
#  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
#  action :create
##  not_if do (File.exists?("C:/chef/#{node['starter']['git_instller']}")) end
#  end

#  windows_package "Git-2.12.2.2-64-bit"  do
#    action :remove
#  end

=begin
directory  "#{node['starter']['dir']}" do
 owner "#{node['starter']['user']}"
 group "#{node['starter']['group']}"
 mode "#{node['starter']['mode']}"
 recursive true
 action :create
end

cookbook_file "#{node['starter']['dir']}/index.html" do
 source 'index.html'
 owner "#{node['starter']['user']}"
 group "#{node['starter']['group']}"
 mode "#{node['starter']['mode']}"
 action :create
end
=end

=begin
subrat = data_bag_item('user','oracleuser')
Chef::Log.info("testing databag #{subrat['monitor_config']['datacenter']}")
=end


=begin
chef_data_bag_item 'user1' do
  attribute 'node.name'
  action :delete
end
=end

#objitem = data_bag_item('passwords','mysql')

#Chef::Log.info("password is #{objitem['mysql']['pass']}")
#encryptedObj = Chef::EncryptedDataBagItem.load("user", "kiran_encrypted")

encryptedObj = Chef::EncryptedDataBagItem.load("passwords", "pass")

Chef::Log.info("password is #{encryptedObj("mysql","pass")
