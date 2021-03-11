#!/usr/bin/env bash
#
#
echo "Instalando Driver´s Wireless"
sleep 2
sudo add-apt-repository ppa:linuxmint-tr/wireless-ppa
sudo apt update
sudo apt install rtl8723de-dkms -y 
sudo modprobe -r rtl8723de
sudo modprobe rtl8723de
#
echo "Instalação concluída com sucesso"
sleep 2
