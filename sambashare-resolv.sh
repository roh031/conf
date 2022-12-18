#!/usr/bin/env bash
sudo chown root:sambashare /var/lib/samba/usershares
sudo chmod 1770 /var/lib/samba/usershares
sudo usermod -aG sambashare $USER
#sudo adduser $USER sambashare

