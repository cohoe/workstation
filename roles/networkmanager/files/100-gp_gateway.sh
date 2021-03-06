#!/usr/bin/env bash

# https://askubuntu.com/questions/13963/call-script-after-connecting-to-a-wireless-network
#
# For some reason the GlobalProtect VPN doesn't add a default route anymore.
# Maybe it didn't in the first place? Well it does it when calling openconnect
# manually, but not via NetworkManager
# Also delete any SSH ControlMasters that have been established.

if [[ "$1" = "vpn0" && "$2" = "vpn-up" ]]; then
  ip route add default dev ${1}
  rm -rf /tmp/ssh-*
fi
