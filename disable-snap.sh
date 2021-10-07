#!/bin/bash

rm -rf /var/cache/snapd/ && echo "Clear snap cache"
apt autoremove --purge snapd gnome-software-plugin-snap && echo "Uninstall snap and snap GUI tool"
rm -rf ~/snap && echo "Clear snap preferences"
apt-mark hold snapd && echo "Put snap on hold"
echo "Finished"