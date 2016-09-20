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

### Organization and Features
* Static versions need centralized. Like plex :(
* vbox needs version bump
* NVIDIA kernel modules
* MIME Types (xdg-mime default foo.desktop foo/bar)

### System
* Grub handling for EFI
* Grub config for resolution (http://forums.fedoraforum.org/showthread.php?t=306271)

### XFCE
* Monitor never goes to sleep. Check DPMS through xfce-power?
* smb-mount should be off (well, maybe. we must do research)

### Firewall
* add udp/137 inbound connection from local subnet for firewall
* add udp/1900 inbound connection from local subnet for firewall

### System Specific
* fstab
* PulseAudio was DOA with a crappy default.pa file on IG88. Whats up with that?

### Long-term
* Tags for certain refreshers (ie, glibc breaks locale)
