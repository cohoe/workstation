#!/usr/bin/env bash

# https://askubuntu.com/questions/13963/call-script-after-connecting-to-a-wireless-network
#
# For some reason the GlobalProtect VPN doesn't add a default route anymore.
# Maybe it didn't in the first place? Well it does it when calling openconnect
# manually, but not via NetworkManager

if [[ "$1" = "vpn0" && "$2" = "up" ]]; then
  ip route add default dev ${1}
fi
