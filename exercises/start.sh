#!/bin/bash

read -r -p "Enter username to set as hostname: " HOSTNAME

if [ -n "$HOSTNAME" ]; then
    echo "$HOSTNAME" | sudo tee /etc/hostname >/dev/null
    echo "127.0.0.1 $HOSTNAME" | sudo tee -a /etc/hosts >/dev/null
    sudo hostname "$HOSTNAME"
fi

export USER=$HOSTNAME
export TERM=xterm
export SHELL="/bin/fish"

asciinema rec -i 1 -c '/bin/fish'
