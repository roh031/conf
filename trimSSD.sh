#!/usr/bin/env bash
# Instale o ANACRON e adicione a seguinte linha de comando:
# @monthly	5	TrimSSD	/home/ronaldo/Documentos/conf/trimSSD.sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG
fstrim -v /home >> $LOG
