#!/usr/bin/env bash 
#
#
echo "Baixando Coreutils"
sleep 2
apt update && apt install build-essential -y 
wget -c http://gnu.c3sl.ufpr.br/ftp/coreutils/coreutils-8.32.tar.xz
tar xfv coreutils-8.32.tar.xz 
cd coreutils-8.32.tar.xz 
wget -c https://raw.githubusercontent.com/jarun/advcpmv/master/advcpmv-0.8-8.32.patch 
#
#  Mova o "advcpmv-0.8-8.32.patch"  para a pasta "coreutils-8.32/" 
# Em seguida use o comando  "./configure --prefix=/usr"
# Logo após, use o comando "patch -p1 < advcpmv-0.8-8.32.patch"
# Então use:  "make -j 3"
# Então vá para a pasta "cd /srv" e copie os arquivos com o comando "cp cp mv /usr/bin"
