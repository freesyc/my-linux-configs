#!/bin/bash

if [[ $EUID != 0 ]]; then
	echo "run as root"
	exit 1
fi

pamac remove pidgin --no-confirm
pamac remove hexchat --no-confirm
