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
* GRUB MBR vs EFI may not be handled appropiately
* nsswitch might be broken
* pulse equalizer might get removed
* wallpaper didnt work on seefra. works on VMs
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
