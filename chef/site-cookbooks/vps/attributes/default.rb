default.packages = %w[vim git]

default.users = ['webadmin']

default.user.ssh_keygen = false

default.openssh.server.permit_root_login = 'no'
default.openssh.server.password_authentication = 'no'
default.openssh.server.allow_groups = 'sudo'
default.openssh.server.login_grace_time = '30'
default.openssh.server.use_p_a_m = 'no'
default.openssh.server.print_motd = 'no'

# firewall attribs
# open port 22 for ssh
default['firewall']['allow_ssh'] = true

# email when there are issues with unattended upgrades
default['apt']['unattended_upgrades']['mail'] = 'christie@numfocus.org'
default['apt']['unattended_upgrades']['enable'] = true
default['apt']['unattended_upgrades']['origins_patterns'] = ["origin=Ubuntu,archive=xenial-security"]

# sudo
default['authorization']['sudo']['users'] = ['webadmin']
default['authorization']['sudo']['passwordless'] = true
