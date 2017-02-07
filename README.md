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
* NVIDIA kernel modules. Packages are broken so this may be a manual thing.

### System

### XFCE
* Monitor never goes to sleep. Check DPMS through xfce-power?
* smb-mount should be off (well, maybe. we must do research)

### Firewall

### System Specific
* fstab

### Long-term
* MIME Types (xdg-mime default foo.desktop foo/bar)
