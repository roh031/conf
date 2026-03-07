#!/usr/bin/env bash
#
sudo apt install samba samba-common libcups2 smbclient htop gddrescue foremost wipe nwipe clonezilla zsh git curl wget testdisk growisofs mdadm rsyslog neofetch dcfldd speedtest-cli zip unzip 
sudo apt install docker.io docker-compose containerd dcfldd ufw -y
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.socket docker containerd
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo adduser $USER sambashare
sudo usermod -aG sambashare $USER
sudo smbpasswd -a $USER
echo "*.*  /var/log/tudao.log" >> /etc/rsyslog.conf
sudo systemctl restart smbd.service nmbd.service rsyslog.service
sudo systemctl enable --now fstrim.timer
sudo reboot now
