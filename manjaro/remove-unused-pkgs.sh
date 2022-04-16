#!/bin/bash

if [[ $EUID != 0 ]]; then
	echo "run as root"
	exit 1
fi

pkgs="pidgin hexchat"

pamac remove $pkgs
