#!/usr/bin/env bash
#
#
LOG=/var/log/updateSYSTEM.log
sudo apt update >> $LOG
sudo apt full-upgrade -y >> $LOG
sudo apt install -f -y >> $LOG
sudo apt autoremove --purge -y >> $LOG
sudo apt clean && apt autoclean >> $LOG
flatpak update >> $LOG
echo "*** $(date -R) ***" >> $LOG
sync
#
