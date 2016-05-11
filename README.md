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

* Keyboard functions
  * /commands/custom/XF86AudioLowerVolume      amixer set Master 5%-
  * /commands/custom/XF86AudioMute             amixer set Master toggle
  * /commands/custom/XF86AudioRaiseVolume      amixer set Master 5%+
  * /commands/default/<Primary><Alt>l          xflock4

* user bin dir should be a var
* pipeline needs bindir=~/.bin
