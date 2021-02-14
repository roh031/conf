#!/usr/bin/env bash 
echo "Instalando driver da placa Wireless Realtek"
sleep 2 
sudo add-apt-repository ppa:kelebek333/kablosuz
sudo apt update
sudo apt install rtl8188fu-dkms -y
