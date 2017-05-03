#!/bin/bash

# Setup Fedora intended to be called from curl

# Install git
sudo dnf update -y
sudo dnf install git redhat-lsb-core ansible -y

# Grab the repo
REPO_DIR=/tmp/workstation

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
    echo "The workstation repo is at /tmp/workstation. An example run would be:"
    echo "  ansible-playbook -K -l localhost playbooks/home.yml"
    echo ""
fi
