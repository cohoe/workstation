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
* Tags for certain refreshers (ie, glibc breaks locale)
* fstab
* Power settings for UPS desktop
* chrome remote desktop now has a real package!
* PIA NetworkManager config

### Desktop
Bugs:
* PulseAudio was DOA with a crappy default.pa file
* Why is acpid installed?
* flat-volumes=no in /etc/pulse/daemon.conf

Misc Issues:
* disable load-module module-suspend-on-idle in /etc/pulse/default.pa
* MIME Types (xdg-mime default foo.desktop foo/bar)
