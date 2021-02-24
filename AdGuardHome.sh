#!/usr/bin/env bash 
#
#
echo "Instalando AdGuard Home"
sleep 2 
apt update && apt install git curl wget bash -y 
curl -sSL https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh

