#!/usr/bin/env bash
#
#
LOG=/var/log/updateSYSTEM.log
apt update >> $LOG
apt upgrade -y >> $LOG
apt install -f -y >> $LOG
apt auotemove -y 
apt clean && apt autoclean
freshclam >> $LOG
flatpak update >> $LOG
echo "*** $(date -R) ***" >> $LOG
sync
#
