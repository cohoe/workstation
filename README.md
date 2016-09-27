Workstation
===========

Ansible scripts for development environment configuration.

## Requirements
* SSHD is enabled on target.
* requiretty is removed from the targets sudoers file.
* User can passwordless sudo
* System updated to most recent kernel/system patch set.

## Post-Install
* smbpasswd

## TODO
### Organization and Features
* Static versions need centralized. Like plex :(
* vbox needs version bump. Look to use rpmfusion packages instead.
* NVIDIA kernel modules. Look to use rpmfusion packages.
* CRD needs dotdile in homedir (https://support.google.com/chrome/answer/1649523?hl=en)
* plymouth boot screen to solar
* Disable docky since I don't really use it.
* Install GIMP

### System
* Grub handling for EFI

### XFCE
* Monitor never goes to sleep. Check DPMS through xfce-power?
* smb-mount should be off (well, maybe. we must do research)
* xfconf-query -c xfce4-session -p /general/LockCommand -s "light-locker-command -l" --create -t string (also replace keystroke)
* Add restart action button

### Firewall
* add udp/137 inbound connection from local subnet for firewall
* add udp/1900 inbound connection from local subnet for firewall

### System Specific
* fstab
* PulseAudio was DOA with a crappy default.pa file on IG88. Whats up with that?

### Long-term
* Tags for certain refreshers (ie, glibc breaks locale)
* MIME Types (xdg-mime default foo.desktop foo/bar)
