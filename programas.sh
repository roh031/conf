#!/usr/bin/env bash
#
echo "Instalando os programas"
sleep 2
sudo apt update && sudo apt install wipe nwipe  dcfldd clonezilla foremost testdisk gddrescue growisofs screenfetch scrot unoconv tilix htop gparted secure-delete -y
sudo apt install samba samba-common libcups2 sshfs openssh-server chrony vim android-tools-adb android-tools-fastboot -y
sudo apt install rsyslog btrfs-progs xfsprogs xfsdump gdebi wget git curl redshift redshift-gtk audacious audacity vlc docker.io docker-compose containerd mdadm -y
sudo apt install simplescreenrecorder file-roller gimp gnome-disk-utility pv cgpt tar anacron brasero k3b clamav clamtk -y
sudo apt install zip unzip rar unrar-free poppler-utils ttf-mscorefonts-installer stress-ng zsh  xsensors jpegoptim steghide ncdu smbclient -y
sudo apt install nmap progress build-essential gufw smartmontools tldr exa fd-find bashtop speedtest-cli -y 
#sudo apt install zram-config  synapse synaptic p7zip p7zip-full p7zip-rar lzma lzma-dev  ark ncompress atop feh neovim rzip -y
systemctl disable clamav-freshclam.service
sudo rm -f /var/log/clamav/freshclam.log
sudo freshclam
#
#
sudo apt install cpu-checker bridge-utils virtinst virt-viewer  qemu qemu-kvm virt-manager libvirt-daemon ncdu -y
sudo apt install virtualbox  virtualbox-guest-additions-iso -y 
clear
sudo kvm-ok 
sudo lsmod | grep -i kvm 
sudo systemctl enable libvirtd --now
sudo usermod -aG  kvm  $USER
sudo usermod -aG libvirt  $USER 
sudo usermod -aG docker $USER
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo adduser $USER sambashare
echo "*.*     /var/log/tudao.log"
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo adduser $USER sambashare
sudo usermod -aG sambashare $USER
sudo smbpasswd -a $USER
sudo systemctl restart nmbd.service smbd.service rsyslog.service
sudo systemctl enable --now docker docker.socket containerd
reboot 
