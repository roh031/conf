!/usr/bin/env bash 
#
#
echo "Instalando Servidor NFS"
sleep 2 
apt install nfs-kernel-server  nfs-common -y 
clear
echo "~/192.168.1.0/24              (rw,subtree_check,insecure,sync,no_root_squash)" >> /etc/exports
