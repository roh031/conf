#!/usr/bin/env bash
#
sudo apt update
sudo apt install samba samba-common libcups2 smbclient htop gddrescue foremost wipe nwipe clonezilla  git curl wget testdisk growisofs mdadm neofetch speedtest-cli zip unzip unrar-free zsh -y
sudo apt install docker.io docker-compose containerd dcfldd ufw -y
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.socket docker containerd fstrim.timer
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo adduser $USER sambashare
sudo usermod -aG sambashare $USER
sudo smbpasswd -a $USER
sudo systemctl restart smbd.service nmbd.service
sudo reboot now
