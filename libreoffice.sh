#!/usr/bin/env bash 
#
#
echo "Instalando LibreOffice"
sleep 2
add-apt-repository ppa:libreoffice/libreoffice-7-0
apt update --fix-missing && apt install libreoffice -y 
clear
echo "Libreoffice instalado com sucesso!"
