#!/usr/bin/env bash
#
apt install samba samba-common libcups2 smbclient htop gddrescue foremost wipe nwipe clonezilla zsh git curl wget testdisk dcfldd speedtest-cli zip unzip -y 
chown root:sambashare /var/lib/samba/usershares
chmod 1770 /var/lib/samba/usershares
adduser $USER sambashare
smbpasswd -a $USER
systemctl restart smbd.service
