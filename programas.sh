#!/usr/bin/env bash
#
echo "Instalando os programas"
sleep 2
apt install wipe nwipe dc3dd dcfldd clonezilla foremost testdisk gddrescue growisofs screenfetch scrot unoconv tilix htop gparted secure-delete -y
apt install samba samba-common libcups2 sshfs openssh-server ntp ntpdate python   vim mc feh ffmpeg  -y
apt install imagemagick rsyslog  btrfs-progs xfsprogs xfsdump gdebi wget git curl redshift redshift-gtk audacious audacity vlc -y
apt install simplescreenrecorder bleachbit speedtest-cli p7zip p7zip-full p7zip-rar lzma lzma-dev rar unrar-free ark ncompress rzip file-roller -y
apt install zip unzip xarchiver poppler-utils ttf-mscorefonts-installer stress-ng zsh  atop xsensors jpegoptim steghide  smbclient -y
apt install nmap progress build-essential  gvfs-backends nfs-kernel-server nfs-common hddtemp smartmontools  -y 
apt install cpu-checker bridge-utils virtinst virt-viewer  qemu qemu-kvm virt-manager libvirt-daemon -y
#apt install virtualbox  virtualbox-guest-additions-iso -y 
echo "Finalizando" 
sleep 2
clear
#kvm-ok 
#lsmod | grep -i kvm 
#systemctl enable libvirtd --now
#usermod -aG  kvm  $USER
#usermod -aG libvirt  $USER 
#reboot
 
