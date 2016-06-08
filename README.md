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
* Atom minimap package
* fstab
* crypt
* Power settings for UPS desktop

### Desktop
Bugs:
* Thunar cannot create trash for NTFS mount
* PulseAudio was DOA with a crappy default.pa file

Misc Issues:
* sysctl dev.raid.speed_limit_max=something less than 200000 during normal use
* disable load-module module-suspend-on-idle in /etc/pulse/default.pa
* MIME Types (xdg-mime default foo.desktop foo/bar)
