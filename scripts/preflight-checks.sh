#!/bin/bash

source /lib/lsb/init-functions

check_ssh() {
    systemctl status sshd > /dev/null
    rc=$?
    if [ ${rc} != 0 ]; then
        log_failure_msg "SSHD is not running."
        return 1
    else
        log_success_msg "SSHD is running."
    fi
}

check_sudoers() {
    sudo cat /etc/sudoers | grep -i requiretty > /dev/null
    rc=$?
    if [ ${rc} != 1 ]; then
        log_failure_msg "requiretty is specified in sudoers."
        return 1
    else
        log_success_msg "Sudoers does not requiretty."
    fi
}

check_updates() {
    sudo dnf -q check-update > /dev/null
    rc=$?
    if [ ${rc} != 0 ]; then
        log_failure_msg "System has package updates available."
        return 1
    fi
    log_success_msg "System has no updates available."
}

check_fingerprint() {
    if [ ! -f ~/.ssh/known_hosts ]; then
        log_failure_msg "known_hosts file does not exist."
        return 1
    fi
    for key in $(ssh-keyscan localhost 2>&1); do
        if [[ ${key} == "AAAA"* ]]; then
            line=$(grep "${key}" ~/.ssh/known_hosts)
            if [[ ${line} == "localhost"* ]]; then
                log_success_msg "SSH key for localhost is trusted."
                return 0
            fi
        fi
    done
    log_failure_msg "SSH key for localhost is not in known_hosts."
    return 1
}

check_efi() {
    sudo grub2-probe -t device /boot/efi > /dev/null 2>&1
    rc=$?
    if [ ${rc} != 0 ]; then
        log_failure_msg "EFI bootloader not found."
        return 1
    fi
    log_success_msg "EFI bootloader found."
}

check_kernel() {
    latest_installed=$(for kimg in $(/bin/ls -t /boot/vmlinuz-*.x86_64); do echo $kimg; return; done)
    latest_installed="${latest_installed/\/boot\/vmlinuz-/''}"

    running=$(uname -r)

    if [[ ${latest_installed} != ${running} ]]; then
        log_failure_msg "Latest kernel is not running. Reboot and try again."
        return 1
    fi

    log_success_msg "Latest installed kernel is running."
}

check_hostname() {
    if [[ $(hostname) == *"localhost"* ]]; then
        log_failure_msg "Hostname must not be localhost."
        return 1
    fi

    log_success_msg "Hostname is set."
}

check_dragora() {
    if [ -f /usr/bin/dnfdragora ]; then
        log_failure_msg "dnfdragora is present."
        return 1
    fi

    log_success_msg "dnfdragora is absent."
}

ret=0
check_sudoers
ret=$((${ret}+$?))
check_updates
ret=$((${ret}+$?))
check_efi
ret=$((${ret}+$?))
check_kernel
ret=$((${ret}+$?))
check_hostname
ret=$((${ret}+$?))
check_dragora
ret=$((${ret}+$?))

exit ${ret}
