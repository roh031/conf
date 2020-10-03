#!/usr/bin/env bash 
#
#
echo "Instalando os pacotes utilitários"
sleep 2
apt install wipe nwipe dc3dd dcfldd clonezilla foremost testdisk gddrescue growisofs  scrot unoconv  -y
apt install samba samba-common libcups2 sshfs openssh-server ntp ntpdate python vim feh ffmpeg  -y
apt install imagemagick rsyslog  btrfs-progs xfsprogs xfsdump gdebi wget git curl screenfetch -y
apt install speedtest-cli p7zip p7zip-full p7zip-rar lzma lzma-dev rar unrar-free htop  -y
apt install zip unzip poppler-utils  stress-ng zsh  atop xsensors jpegoptim squid3 secure-delete -y
