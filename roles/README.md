Roles
=====

## Base
System-level configurations for any computer.
* **chrony**: NTP client
* **clitools**: Personalized command line toolset
* **common**: Required tools for Ansible to work
* **grub**: GRUB2 boot manager
* **locale**: Locale configuration
* **repo**: Package repositories
* **security**: Various system security features
* **sudo**: Sudo config

## Desktop
Workstation configurations in any environment.
* **atom**: Atom text editor
* **chrome**: Google Chrome web browser
* **docky**: Mac-like dock
* **firefox**: Mozilla Firefox web browser
* **guitools**: Personalized graphical toolset
* **httpd**: Apache web server for local content
* **konsole**: GUI terminal
* **ksexplorer**: Java KeyStore explorer
* **launchy**: Launchy launchbar
* **nfs**: NFS server
* **nsswitch**: NSS resolution
* **pulse**: PulseAudio
* **pycharm**: Python IDE
* **quicktile**: Tiling window overlay utility
* **remmina**: Remote Desktop client
* **samba**: CIFS server/client
* **shell**: Personal shell config
* **skippy**: Mac Expose-like window manager
* **slack**: Slack desktop application
* **sublime**: Sublime text editor
* **vbox**: VirtualBox
* **vmworkstation**: VMware Workstation
* **wallpaper**: User and Login wallpaper
* **wine**: WINE Windows support
* **x11**: X11 configuration
* **xbindkeys**: xbindkeys keystroke manager
* **xfce**: XFCE desktop environment
* **xscreensaver**: XScreenSaver configuration

## Work
A computer at work.
* **anyconnect**: Cisco AnyConnect VPN client
* **emc**: Various corp configuration
* **horizon**: VMware Horizon View client
* **ldap**: OpenLDAP client configuration
* **perforce**: Perforce visual client
* **pipeline**: Jenkins Pipeline Builder

## Home
A computer at home.
* **arduino**: Arduino IDE
* **hdhomerun**: SiliconDust HDHomeRun software
* **kodi**: Kodi media center
* **piavpn**: PrivateInternetAccess VPN
* **plex**: Plex Media Server
* **steam**: Steam game manager
* **truecrypt**: TrueCrypt volume manager
* **wemo**: Belkin Wemo control utility

## Problematic
* nsswitch (Currently unused, isn't even right)
* plex (Should be deprecated since not all machines should be Plexified)
* pulse (Equalizer may get whacked, see how Seefra does and go from there)
* sublime (Can be deleted)
* sudo (Replaced by prerequisit, can go away)
* truecrypt (Deprecated, can go away)
* vbox (Needs new packages)
* vmworkstation (Deprecated, can go away)
* wallpaper (Doesnt work, at least on Seefra)
* wine (Not used, can go away)
* xbindkeys (Only used for skippy, line should be moved and dependency created)