#
# Cookbook Name:: vps
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

include_recipe 'apt::default'
include_recipe 'apt::unattended-upgrades'
include_recipe 'build-essential::default'

package 'vim'
package 'git'

#node.packages.each do |pkg|
    #package pkg
#end

# provision user account
include_recipe 'user::data_bag'

# configure sudo
include_recipe 'sudo::default'

# provision ssh
include_recipe 'openssh'

# setup firewall
include_recipe 'firewall::default'

# setup fail2ban
include_recipe 'fail2ban'

# setup logrotate
include_recipe 'logrotate::global'
