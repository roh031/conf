#!/usr/bin/env bash 
#
#
echo "Realizando teste de escrita e leitura no disco"
sleep 2
sudo hdparm -tT /dev/sda
