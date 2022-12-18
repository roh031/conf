#!/usr/bin/env bash
#sudo mkdir /var/lib/samba/usershares
#groupadd -r sambashare
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo usermod -aG sambashare $USER
#sudo adduser $USER sambashare

