#!/usr/bin/env bash
#
sudo apt install samba samba-common libcups2 smbclient htop gddrescue foremost wipe nwipe clonezilla zsh git curl wget testdisk growisofs rsyslog neofetch dcfldd speedtest-cli zip unzip clamav mdadm -y
sudo apt install docker.io docker-compose containerd -y
sudo usermod -aG docker $USER
sudo systemctl enable --now docker docker.socket containerd
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo adduser orangepi sambashare
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo usermod -aG sambashare orangepi
sudo smbpasswd -a orangepi
sudo systemctl restart smbd.service nmbd.service
