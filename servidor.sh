#!/usr/bin/env bash
#
sudo apt install samba samba-common libcups2 smbclient htop gddrescue foremost wipe nwipe clonezilla zsh git curl wget testdisk growisofs mdadm rsyslog neofetch dcfldd speedtest-cli zip unzip docker.io docker-compose -y 
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo adduser $USER sambashare
sudo usermod -aG sambashare $USER
sudo smbpasswd -a $USER
echo "*.*  /var/log/tudao.log" >> /etc/rsyslog.conf
systemctl restart smbd.service nmbd.service rsyslog.service
