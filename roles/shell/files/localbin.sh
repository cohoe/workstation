#!/bin/sh
if [ "$EUID" = "0" ]; then
    export PATH=$PATH:/usr/local/bin:/usr/local/sbin
fi
