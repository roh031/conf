#!/usr/bin/env bash
#
echo "Instalando Firewall UFW"
sleep 3
sudo apt install ufw -y
clean
sleep 2
#
echo "Aplicando as regras"
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 445/tcp
sudo ufw allow 2222/tcp
sudo ufw allow 137:138/udp
sudo ufw allow 139/tcp
sudo ufw allow 53
sleep 2
#sudo ufw default deny incoming
#
echo "Finalizado"
sleep 2
sudo ufw enable && sudo ufw reload
