#!/bin/bash

P2P_CONFIG="/home/peer2profit/.config/org.peer2profit.peer2profit.ini"

if [ -z "$EMAIL" ]; then
    echo "Please specify account email address via EMAIL=<email>"
    exit 1
fi
if [ ! -f $P2P_CONFIG ]; then
    echo "Creating config..."
    tee -a $P2P_CONFIG << END
[General]
StartOnStartup=true
hideToTrayMsg=true
locale=en_US
Username=$EMAIL
installid2=${INSTALL_ID-$(uuidgen)}
END
    echo -n
fi

echo "Staring Peer2Profit..."
xvfb-run peer2profit
