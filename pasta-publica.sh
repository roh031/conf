#/usr/bin/env bash
#
echo "Criando pasta publica"
sleep 2 
sudo mkdir -m 775 /home/publico
sudo chgrp users /home/publico
sudo usermod -G users ronaldo 
sudo mkdir /montagem
sudo chown ronaldo:root /montagem 
echo "Tudo certo"
