!/usr/bin/env bash 
#
#
echo "Instalando Servidor NFS"
sleep 2 
apt install nfs-kernel-server nfs-common -y 
clear
echo "Edite o arquivo de configuração em '/etc/exports'"
echo "#caminho_da_pasta_a_ser_compartilhada		*(rw,subtree_check,insecure,sync,no_root_squash)"
sleep 2
