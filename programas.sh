#!/usr/bin/env bash
#
echo "Instalando os programas"
sleep 2
apt install wipe nwipe  dcfldd clonezilla foremost testdisk gddrescue growisofs screenfetch scrot unoconv tilix htop gparted secure-delete -y
apt install samba samba-common libcups2 sshfs openssh-server ntp ntpdate python vim  feh  -y
apt install  rsyslog  btrfs-progs xfsprogs xfsdump gdebi wget git curl redshift redshift-gtk audacious audacity vlc -y
apt install simplescreenrecorder  file-roller gimp gnome-disk-utility pv cgpt tar hashdeep  -y
apt install zip unzip rar unrar-free  poppler-utils ttf-mscorefonts-installer stress-ng zsh  atop xsensors jpegoptim steghide ncdu  smbclient -y
apt install nmap progress build-essential  gvfs-backends nfs-kernel-server nfs-common hddtemp smartmontools zram-config  synapse  -y 
#
#
#apt install cpu-checker bridge-utils virtinst virt-viewer  qemu qemu-kvm virt-manager libvirt-daemon ncdu -y
#apt install virtualbox  virtualbox-guest-additions-iso -y 
#apt install  p7zip p7zip-full p7zip-rar lzma lzma-dev  ark ncompress rzip -y
echo "Finalizando" 
sleep 2
clear
#kvm-ok 
#lsmod | grep -i kvm 
#systemctl enable libvirtd --now
#usermod -aG  kvm  $USER
#usermod -aG libvirt  $USER 
#reboot
 
