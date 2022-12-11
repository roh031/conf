#!/bin/bash
echo "Instalando os pacotes"
sleep 2
apt install wipe nwipe  dcfldd clonezilla foremost testdisk gddrescue growisofs  scrot unoconv   -y 
apt install samba samba-common libcups2 sshfs openssh-server ntp ntpdate python anacron -y 
apt install rsyslog  btrfs-progs xfsprogs xfsdump gdebi wget git curl screenfetch ncdu -y 
apt install speedtest-cli  rar unrar-free htop  gvfs-backends nfs-kernel-server nfs-common  progress build-essential  -y 
apt install poppler-utils  stress-ng zsh  atop  jpegoptim squid3 secure-delete zip unzip  -y

