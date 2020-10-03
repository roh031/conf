#!/usr/bin/env bash
#
echo "Instalando gerenciador de bateria"
sleep 2
sudo add-apt-repository ppa:slimbook/slimbook
sudo apt-get update
sudo apt-get install slimbookbattery -y
