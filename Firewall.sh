#!/usr/bin/env bash

sudo apt update && sudo apt install ufw -y
sudo ufw enable
sudo ufw allow 137:138/udp
sudo ufw allow 139,445/tcp
#sudo ufw allow 445/tcp
sudo ufw allow 80
sudo ufw allow 443
#sudo ufw allow 4533
sudo ufw allow 53
sudo ufw allow 2222
sudo ufw allow 22
sudo ufw reload
sudo ufw status verbose
