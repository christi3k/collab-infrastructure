name             'vps'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures vps'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'
depends 'build-essential'
depends "user"
depends "sudo"
depends "openssh"
depends "firewall"
depends "fail2ban"
depends "postfix"
depends "logrotate"
depends "nodejs"
