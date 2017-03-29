#!/bin/bash

source /lib/lsb/init-functions

check_ssh() {
    systemctl status sshd > /dev/null
    rc=$?
    if [ ${rc} != 0 ]; then
        log_failure_msg "SSHD is not running."
    else
        log_success_msg "SSHD is running."
    fi
}

check_sudoers() {
    sudo cat /etc/sudoers | grep -i requiretty > /dev/null
    rc=$?
    if [ ${rc} != 1 ]; then
        log_failure_msg "requiretty is specified in sudoers."
    else
        log_success_msg "Sudoers does not requiretty."
    fi
}

check_updates() {
    sudo dnf -q check-update > /dev/null
    rc=$?
    if [ ${rc} != 0 ]; then
        log_failure_msg "System has package updates available."
    fi
    log_success_msg "System has no updates available."
}

check_fingerprint() {
    if [ ! -f ~/.ssh/known_hosts ]; then
        log_failure_msg "known_hosts file does not exist."
        return
    fi
    for key in $(ssh-keyscan localhost 2>&1); do
        if [[ ${key} == "AAAA"* ]]; then
            line=$(grep "${key}" ~/.ssh/known_hosts)
            if [[ ${line} == "localhost"* ]]; then
                log_success_msg "SSH key for localhost is trusted."
                return
            fi
        fi
    done
    log_failure_msg "SSH key for localhost is not in known_hosts."
}

check_ssh
check_sudoers
check_updates
check_fingerprint
