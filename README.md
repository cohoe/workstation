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
* GRUB MBR vs EFI may not be handled appropiately
* nsswitch might be broken
* pulse equalizer might get removed
* wallpaper didnt work on seefra. works on VMs
* xbindkeys is only used for skippy. Line should be moved and dependency created.
* skippy and xbindkeys are not used
* Atom configuratoin

### System
* VirtualBox needs fixed

### XFCE
* Monitor never goes to sleep. Check DPMS through xfce-power?

### Firewall

### System Specific
* fstab

### Long-term
* MIME Types (xdg-mime default foo.desktop foo/bar)
