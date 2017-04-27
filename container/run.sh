#!/bin/bash

ANSIBLE_REPO_SRC_PATH=~/Projects/priv/workstation
ANSIBLE_REPO_DEST_PATH=/workstation

sudo docker run -v "${ANSIBLE_REPO_SRC_PATH}":"${ANSIBLE_REPO_DEST_PATH}" -it "workstation":"testing" /bin/bash
