Workstation
===========

Ansible scripts for development environment configuration.

## Requirements
* SSHD is enabled on target.
* requiretty is removed from the targets sudoers file.

## TODO
* add domain realm and default_realm for EMC krb5
* chagne samba domain
* Tags
* Workstation needs work for 11
  * ```export VMWARE_USE_SHIPPED_LIBS=force```
  * ```LD_LIBRARY_PATH=/usr/lib/vmware/lib/libglibmm-2.4.so.1/:/usr/lib64/gtk-2.0/modules/:$LD_LIBRARY_PATH```


* pipeline needs bindir=~/.bin
* Launchy plugins needed some hack to make them work
