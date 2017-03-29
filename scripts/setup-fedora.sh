#!/bin/bash

# Setup Fedora intended to be called from curl

# Install git
sudo dnf update -y
sudo dnf install git redhat-lsb-core ansible -y

# Grab the repo
cd /tmp
git clone https://github.com/cohoe/workstation
cd /tmp/workstation

bash scripts/preflight-checks.sh
if [ $? != 0 ]; then
    echo "ERROR: You have some issues to address before you can build your system."
    exit 1
else
    echo "SUCCESS: You're all set!"
    echo ""
    echo "The workstation repo is at /tmp/workstation. An example run would be:"
    echo "  ansible-playbook -K -l localhost playbooks/home.yml"
    echo ""
fi
