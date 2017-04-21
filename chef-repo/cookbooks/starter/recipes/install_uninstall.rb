Chef::Log.info("I am in version 1.0.1")

=begin
remote_file 'C:/chef/Git-2.12.2.2-64-bit.exe' do
source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
action :create
end
=end

=begin
execute 'GIT_INSTALLATION' do
command 'C:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
end
=end


=begin
execute 'GIT_UNINSTALLATION' do
  cwd "C:/Program Files/GIT"
command "unins000.exe /SILENT"
end
=end


template '/home/vagrant/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['starter']['sudo']['groups'],
    sudoers_users: node['starter']['sudo']['users']
      })
end
