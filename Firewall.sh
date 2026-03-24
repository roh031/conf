#!/usr/bin/env bash
LOG= ~$USER/ufw.log
echo "Instalando o Firewall" >> $LOG
sudo apt update && sudo apt install ufw -y >> $LOG
sudo ufw enable >> $LOG
sudo ufw allow 137:138/udp
sudo ufw allow 139/tcp
sudo ufw allow 445/tcp
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 4533
sudo ufw allow 53
sudo ufw allow 2222
sudo ufw reload >> $LOG
sudo ufw status verbose >> $LOG
date -R >> $LOG
