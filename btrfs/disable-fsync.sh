#!/bin/env bash

if [[ "$EUID" != 0 ]]; then
    echo "Not root, exiting!";
    exit 1;
fi

if [[ -f "/usr/bin/wget" ]]; then
    echo "Downloading using wget";
    wget https://raw.githubusercontent.com/biglinux/disable-fsync/main/disable-fsync/usr/lib/disable-fsync.so -O /usr/lib/disable-fsync.so
elif [[ -f "/usr/bin/curl" ]]; then
    echo "Downloading using curl";
    curl -o /usr/lib/disable-fsync.so https://raw.githubusercontent.com/biglinux/disable-fsync/main/disable-fsync/usr/lib/disable-fsync.so 
else
    echo "Install curl or wget!";
    exit 1;
fi

echo "Adding disable-fsync.so to /etc/ld.so.preload"
echo "/usr/lib/disable-fsync.so" >> /etc/ld.so.preload  
echo "executing ldconfig";
exec ldconfig
