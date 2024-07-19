#!/bin/bash

# Resize 
lvextend --resize -l +100%FREE /dev/mapper/pve-root

# remove repo /etc/apt/sources.list.d/pve-enterprise.list
sed -i 's/^/#/' /etc/apt/sources.list.d/pve-enterprise.list
sed -i 's/^/#/' /etc/apt/sources.list.d/ceph.list
# Add repo /etc/apt/sources.list
cat <<EOL >> /etc/apt/sources.list
deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription
deb http://security.debian.org/debian-security bookworm-security main contrib
EOL

apt update && apt upgrade -y

## remove rpcbind
systemctl disable rpcbind.target
systemctl disable rpcbind.socket
systemctl disable rpcbind.service
systemctl stop rpcbind.target
systemctl stop rpcbind.socket
systemctl stop rpcbind.service
