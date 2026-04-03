#!/usr/bin/env bash
#
sudo apt install zsh -y
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install samba samba-common libcups2 smbclient htop gddrescue foremost wipe nwipe clonezilla  git curl wget testdisk growisofs mdadm rsyslog neofetch speedtest-cli zip unzip unrar-free
sudo apt install docker.io docker-compose containerd dcfldd ufw -y
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.socket docker containerd
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo adduser $USER sambashare
sudo usermod -aG sambashare $USER
sudo smbpasswd -a $USER
sudo systemctl restart smbd.service nmbd.service
sudo systemctl enable --now fstrim.timer
sudo reboot now
