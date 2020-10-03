#!/usr/bin/env bash
#
#
echo "Atualizando os repositórios, pacotes e definições de vírus"
sleep 2
apt update --fix-missing 
apt upgrade -y && apt full-upgrade -y && apt dist-upgrade -y 
apt install -f -y 
apt autoclean
apt autoremove -y && apt clean 
clear
#
sync && swapoff -a 
sysctl vm.swappiness=5
sysctl vm.vfs_cache_pressure=50 
sysctl vm.drop_caches=3 
swapon -a 
