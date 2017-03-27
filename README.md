Workstation
===========

Ansible scripts for development environment configuration.

## Pre-Install Requirements 
* SSHD is enabled on target.
* requiretty is removed from the targets sudoers file.
* System updated to most recent kernel/system patch set.
* Host fingerprint is in known_hosts

## Installation
``ansible-playbook -Kk -l localhost playbooks/home.yml``

## Post-Install Steps
* smbpasswd

## TODO
### Organization and Features
* NVIDIA kernel modules. Packages are broken so this may be a manual thing.

### System
* Add rvm and any other ruby stuffs (requires konsole --login)
* rpmbuild role

### XFCE
* Monitor never goes to sleep. Check DPMS through xfce-power?

### Firewall

### System Specific
* fstab

### Long-term
* MIME Types (xdg-mime default foo.desktop foo/bar)
