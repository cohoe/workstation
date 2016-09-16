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
* vbox needs version bump
* Static versions need centralized. Like plex :(

### Desktop
Bugs:
* PulseAudio was DOA with a crappy default.pa file
* Why is acpid installed?

Misc Issues:
* MIME Types (xdg-mime default foo.desktop foo/bar)
