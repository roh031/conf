#!/usr/bin/env bash
#
echo "Criando pasta publica"
sleep 2 
sudo mkdir -m 775 /home/publico
sudo chgrp users /home/publico
sudo usermod -G users ronaldo 
#sudo mkdir /montagem
#sudo chown ronaldo:root /montagem
#
echo "[publico]" >> /etc/samba/smb.conf
echo "coment = pasta publica" >> /etc/samba/smb.conf
echo "path = /home/publico" >> /etc/samba/smb.conf
echo "create mask = 0660" >> /etc/samba/smb.conf
echo "directory mask = 0771" >> /etc/samba/smb.conf
echovalid users = @users >> /etc/samba/smb.conf
echo "force group = users" >> /etc/samba/smb.conf
echo "writable = yes" >> /etc/samba/smb.conf
echo "browseable = yes" >> /etc/samba/smb.conf
echo "Tudo certo"
