#!/usb/bin/env bash
#
#
LOG=/var/log/scanvirus.log
freshclam
clamscan --recursive --bel --infected --verbose --remove ~ronaldo/ >> $LOG
echo "*** $(date -R) ***" >> $LOG
