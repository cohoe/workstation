Workstation
===========

Ansible scripts for development environment configuration.

## Installation
* Pass all pre-flight checks (```./preflight-checks.sh```)
* ``ansible-playbook -Kk -l localhost playbooks/home.yml``

## Post-Install Steps
* smbpasswd

## TODO
### Organization and Features
* NVIDIA kernel modules. Packages are broken so this may be a manual thing.

### System

### XFCE
* Monitor never goes to sleep. Check DPMS through xfce-power?

### Firewall

### System Specific
* fstab

### Long-term
* MIME Types (xdg-mime default foo.desktop foo/bar)
