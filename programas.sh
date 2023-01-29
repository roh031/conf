#!/usr/bin/env bash
#
echo "Instalando os programas"
sleep 2
apt install wipe nwipe  dcfldd clonezilla foremost testdisk gddrescue growisofs screenfetch scrot unoconv tilix htop gparted secure-delete -y
apt install samba samba-common libcups2 sshfs openssh-server chrony vim android-tools-adb android-tools-fastboot -y
apt install rsyslog btrfs-progs xfsprogs xfsdump gdebi wget git curl redshift redshift-gtk audacious audacity vlc -y
apt install simplescreenrecorder file-roller gimp gnome-disk-utility pv cgpt tar anacron brasero k3b clamav clamtk -y
apt install zip unzip rar unrar-free poppler-utils ttf-mscorefonts-installer stress-ng zsh  xsensors jpegoptim steghide ncdu smbclient -y
apt install nmap progress build-essential gufw smartmontools tldr exa fd-find bashtop  -y 
ufw enable 
#apt install zram-config  synapse synaptic p7zip p7zip-full p7zip-rar lzma lzma-dev  ark ncompress atop feh neovim rzip -y
systemctl disable clamav-freshclam.service
rm -f /var/log/clamav/freshclam.log
freshclam
#
#
apt install cpu-checker bridge-utils virtinst virt-viewer  qemu qemu-kvm virt-manager libvirt-daemon ncdu -y
apt install virtualbox  virtualbox-guest-additions-iso -y 
clear
kvm-ok 
lsmod | grep -i kvm 
systemctl enable libvirtd --now
usermod -aG  kvm  $USER
usermod -aG libvirt  $USER 
chown root:sambashare /var/lib/samba/usershares
chmod 1770 /var/lib/samba/usershares
adduser $USER sambashare
echo "*.*     /var/log/tudao.log"
systemctl restart nmbd.service smbd.service rsyslog.service
reboot 
