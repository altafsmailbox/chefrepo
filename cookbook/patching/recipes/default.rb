#
# Cookbook:: patching
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute 'precheck' do 
  command 'hostname && cat /etc/hosts'
  creates '/tmp/test'
end


file "/tmp/test" do
  owner "root"
  user "root"
  content node[:precheckoutput]
end




execute "yum-update" do
  command "yum install samba -y"
  action :run
end


