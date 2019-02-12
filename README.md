Workstation
===========

Ansible scripts for desktop environment configuration.

Features
--------
Check the [Roles Readme](https://github.com/cohoe/workstation/blob/master/roles/README.md) for an overview of what features are implemented.

Usage
-----
1) Boot a [Fedora x86_64 Xfce live image](https://spins.fedoraproject.org/xfce/download/index.html) on the target system.
2) Install the OS with relatively sane defaults. Reboot into local OS (select Default for Xfce initial setup).
3) Run the [setup script](https://github.com/cohoe/workstation/blob/master/scripts/setup-fedora.sh) to do some pre-flight tests and load the repository.
```
curl -sL grntm.co/setup | bash
```
4) Run a playbook!
```
ansible-playbook -K -l localhost playbooks/home.yml
```

5) Reboot

ToDo
----
* Create NetworkManager profile
* maxime and the future of the ladspa plugin
* grub
