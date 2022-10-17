#!/bin/bash
aur_helper="paru"

if [[ -f "/usr/bin/$aur_helper" ]]; then
	echo "Installing my packages..."
	$aur_helper -Syy - < pkglist.txt
	echo "ALL PACKAGES ARE INSTALLED."
else
	echo "Please install $aur_helper.."
	exit 1
fi
