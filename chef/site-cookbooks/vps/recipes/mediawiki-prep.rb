#
# Cookbook Name:: vps
# Recipe:: mediawiki-prep
#
#
package 'apache2'
package 'libapache2-mod-php'
package 'mysql-server'
package 'php'
package 'php-dev'
package 'php-mysql'
package 'php-intl'
package 'php-curl'
package 'php-cli'
package 'php-json'
package 'php-gd'
package 'php-xml'
package 'php-mcrypt'
package 'php-mbstring'
package 'php-apcu'
package 'composer'
package 'mcrypt'
package 'imagemagick'

# Create mediawiki User
user 'mediawiki' do
  shell '/bin/bash'
end

directory '/home/mediawiki' do
  owner 'mediawiki'
  group 'mediawiki'
end

directory '/var/log/mediawiki' do
  owner 'mediawiki'
  group 'mediawiki'
  mode '755'
end

directory '/usr/local/mediawiki' do
  owner 'mediawiki'
  group 'mediawiki'
end

#git 'mediawiki' do
  #user 'mediawiki'
  #group 'mediawiki'
  #repository node['mediawiki']['git']['repository']
  ##reference node['mediawiki']['git']['reference']
  #destination '/usr/local/mediawiki'
  #action :sync
#end

