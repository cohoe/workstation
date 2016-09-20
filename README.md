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
* Grub handling for EFI
* Grub config for resolution (http://forums.fedoraforum.org/showthread.php?t=306271)
* Purge acpid
* Power button settings
* Thumbnails should be always
* MIME Types (xdg-mime default foo.desktop foo/bar)
* PulseAudio was DOA with a crappy default.pa file on IG88. Whats up with that?
* NVIDIA kernel modules
* xfce snap at border
* Monitor never goes to sleep
* nsswitch.conf needs wins
* smb-mount should be off
* add udp/137 inbound connection from local subnet for firewall
* Disable removable devices from desktop
