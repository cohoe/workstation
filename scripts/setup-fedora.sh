#!/bin/bash

# Setup Fedora intended to be called from curl

# Install git
sudo dnf install git -y

# Grab the repo
cd /tmp
git clone https://github.com/cohoe/workstation
cd /tmp/workstation

bash scripts/preflight-checks.sh
