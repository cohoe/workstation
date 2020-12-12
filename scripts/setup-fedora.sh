#!/bin/bash

# Setup Fedora intended to be called from curl

# Simple prereqs
sudo dnf update -y
sudo dnf install git redhat-lsb-core ansible -y

# Purge crap that gets in our way
sudo dnf erase dnfdragora cockpit -y

# Grab the repo
REPO_DIR=/var/tmp/workstation

if [ -d ${REPO_DIR} ]; then
    cd ${REPO_DIR}
    git pull
else
    git clone https://github.com/cohoe/workstation ${REPO_DIR}
    cd ${REPO_DIR}
fi

bash scripts/preflight-checks.sh
if [ $? != 0 ]; then
    echo "ERROR: You have some issues to address before you can build your system."
    echo "       See the results of the pre-flight tests above to help in"
    echo "       determining what went wrong."
    exit 1
else
    echo "SUCCESS: You're all set!"
    echo ""
    echo "The workstation repo is at ${REPO_DIR}. An example run would be:"
    echo "  ansible-playbook -K --ask-vault-pass -l localhost playbooks/home.yml"
    echo ""
fi
