Workstation
===========

Ansible scripts for desktop environment configuration.

## Usage
1) Boot a [Fedora x86_64 Xfce live image](https://spins.fedoraproject.org/xfce/download/index.html) on the target system.
2) Run the [setup script](https://github.com/cohoe/workstation/blob/master/scripts/setup-fedora.sh) to do some pre-flight tests and load the repository.
```
curl -L grntm.co/setup | bash
```
3) Run a playbook!
```
ansible-playbook -K -l localhost playbooks/home.yml
```

4) Run some post-install steps manually
* smbpasswd
* launchy catalog refresh

## TODO
### Immediate Features
* GRUB MBR vs EFI may not be handled appropiately
* wallpaper didnt work on seefra. works on VMs
* Monitor never goes to sleep. 
  * Check DPMS through xfce-power?
  * Well, maybe. It works on seefra after resetting xscreensaver config and disabling xfce-power

### System Specific
* fstab

### Long-term
* MIME Types (xdg-mime default foo.desktop foo/bar)
