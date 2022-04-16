#!/bin/bash

if [[ $EUID != 0 ]]; then
	echo "Run  as root"
	exit 1
fi

pkgs="kdeconnect redshift qutebrowser klavaro code git github-cli git-cola xfce4-docklike-plugin xfce4-places-plugin"
pamac install $pkgs --no-confirm --no-upgrade
