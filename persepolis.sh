#!/usr/bin/env bash 
#
#
echo "Instalando o gerenciador de downloads"
sleep 2
add-apt-repository ppa:persepolis/ppa 
apt update && apt install persepolis
