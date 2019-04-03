#!/usr/bin/env bash

if [ ! -d roles ]; then
  cd ..
fi

for role in $(/bin/ls roles/); do echo -n "$role: "; grep -c $role playbooks/* | cut -d ':' -f 2 | awk '{s+=$1} END {print s}'; done
