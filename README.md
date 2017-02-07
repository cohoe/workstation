Workstation
===========

Ansible scripts for development environment configuration.

## Pre-Install Requirements 
* SSHD is enabled on target.
* requiretty is removed from the targets sudoers file.
* System updated to most recent kernel/system patch set.

## Installation
``ansible-playbook -Kk -l localhost playbooks/home.yml``

## Post-Install Steps
* smbpasswd

## TODO
### Organization and Features
* Static versions need centralized. Like plex :(
* NVIDIA kernel modules. Packages are broken so this may be a manual thing.
* CRD needs dotdile in homedir (https://support.google.com/chrome/answer/1649523?hl=en)
* plymouth boot screen to solar

### System
* Grub handling for EFI

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
* MIME Types (xdg-mime default foo.desktop foo/bar)
