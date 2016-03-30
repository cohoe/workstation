#class systools {
#	# System Tools
#	package { 'iftop': }
#	package { 'glances': }
#	package { 'setroubleshoot-server': }
#}

class devtools {
	# Shells
	package { 'zsh': }

#	# Editors and workflow
#	package { 'vim-enhanced': }
#	package { 'tmux': }
#	package { 'screen': }
#	package { 'strace': }
#	package { 'git': }
#
#	# Java
#	package { 'java': }
#	package { 'icedtea-web': }
#
#	# Python
#	package { 'python-virtualenvwrapper': }
#	package { 'python-pep8': }
#
#	# LaTeX
#	package { 'texworks': }
#	package { 'texlive-pdftex': }
#
#	# Goups
#	yumgroup { 'Development Tools':
#		ensure => 'present',
#	}
#}

#class nettools {
#	# Packet Capture
#	package { 'nmap': }
#	package { 'tcpdump': }
#	package { 'wireshark-gnome': }
#	package { 'net-snmp-utils': }
#
#	# LDAP
#	package { 'openldap-clients': }
#}

#class browsers {
#	# Chrome
#	include '::chromerepo'
#	package { 'google-chrome-stable': }
#
#	# Firefox
#	package { 'firefox': }
#
#	# @TODO: Flash
#}

#class gui {
#	# Basic tools
#	package { 'launchy': }
#	package { 'numlockx': }
#}

node default {
	# Passwordless sudo for admin group
	class { 'sudo': }
	sudo::conf { 'wheel':
		priority => 10,
		content	 => "%wheel ALL=(ALL) NOPASSWD: ALL",
	}

	# @TODO: RPMFusion

#	# Tools
#	include systools
#	include devtools
#	include nettools
#	include browsers
#	include gui

#	# SSH
#	service { 'sshd':
#		ensure => 'running',
#		enable => true,
#		hasrestart => true,
#	}
#}
