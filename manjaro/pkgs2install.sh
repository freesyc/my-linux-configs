#!/bin/bash

if [[ $EUID != 0 ]]; then
	echo "Run  as root"
	exit 1
fi

pkgs="kdeconnect redshift qutebrowser klavaro code git github-cli git-cola"
pamac install $pkgs --no-confirm --no-upgrade
