Workstation
===========

Ansible scripts for development environment configuration.

## Requirements
* SSHD is enabled on target.
* requiretty is removed from the targets sudoers file.
* User can passwordless sudo

## Post-Install
* smbpasswd

## TODO
* Tags

### Desktop
* sysctl dev.raid.speed_limit_max=something less than 200000 during normal use
* disable load-module module-suspend-on-idle in /etc/pulse/default.pa
