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
include_recipe 'build-essential::default'

package 'vim'
package 'git'

#node.packages.each do |pkg|
    #package pkg
#end

# provision user account
include_recipe 'user::data_bag'

# provision ssh
include_recipe 'openssh'
