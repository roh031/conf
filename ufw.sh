#!/usr/bin/env bash
#
echo "Instalando Firewall UFW"
sudo apt install ufw -y
#
echo "Aplicando as regras"
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 53
sudo ufw allow 445
sudo ufw allow 2222
#
echo "Finalizado"
sudo ufw enable && sudo ufw reload
