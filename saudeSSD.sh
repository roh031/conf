#!/usr/bin/env bash
#
#
echo "Verificando a saúde do dispositivo"
sleep 2
sudo  smartctl -a /dev/sda | grep Media_Wearout_Indicator
# Descomente a linha abaixo para obter as informações sobre o disco
## smartctl -a /dev/sda

