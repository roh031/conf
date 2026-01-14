#!/usr/bin/env bash
#
apt install samba samba-common libcups2 smbclient htop gddrescue foremost wipe nwipe clonezilla zsh git curl wget testdisk growisofs rsyslog screenfetch dcfldd speedtest-cli zip unzip -y 
chown root:sambashare /var/lib/samba/usershares
chmod 1770 /var/lib/samba/usershares
adduser ronaldo sambashare
chown root:sambashare /var/lib/samba/usershares
chmod 1770 /var/lib/samba/usershares
usermod -aG sambashare ronaldo
smbpasswd -a ronaldo
systemctl restart smbd.service
