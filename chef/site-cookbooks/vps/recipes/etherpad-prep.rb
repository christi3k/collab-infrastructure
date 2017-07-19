#
# Cookbook Name:: vps
# Recipe:: etherpad-prep
#

include_recipe 'nodejs'
include_recipe 'nodejs::npm'

# Create etherpad-lite User
user 'etherpad-lite' do
  shell '/bin/bash'
end

directory '/home/etherpad-lite' do
  owner 'etherpad-lite'
  group 'etherpad-lite'
end

directory '/var/log/etherpad-lite' do
  owner 'etherpad-lite'
  group 'etherpad-lite'
  mode '755'
end

directory '/usr/local/etherpad-lite' do
  owner 'etherpad-lite'
  group 'etherpad-lite'
end

git 'etherpad-lite' do
  user 'etherpad-lite'
  group 'etherpad-lite'
  repository node['etherpadlite']['git']['repository']
  reference node['etherpadlite']['git']['reference']
  destination '/usr/local/etherpad-lite'
  action :sync
end
