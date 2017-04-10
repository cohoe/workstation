Workstation
===========

Ansible scripts for development environment configuration.

## Installation
* ``ansible-playbook -K -l localhost playbooks/home.yml``

## Post-Install Steps
* smbpasswd

## TODO
### Organization and Features
* NVIDIA kernel modules. Packages are broken so this may be a manual thing.
* Chrome, Slack, Flash, etc repos should be part of their role.
* Chrome use_repos is not tested in all cases.

### System
* VirtualBox needs fixed

### XFCE
* Monitor never goes to sleep. Check DPMS through xfce-power?

### Firewall

### System Specific
* fstab

### Long-term
* MIME Types (xdg-mime default foo.desktop foo/bar)
