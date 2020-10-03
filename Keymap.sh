#/usr/bin/env bash 
#
#
echo "Configurando o teclado para BR-ABNT2"
sleep 2
setxkbmap -layout  br -model  abnt2
echo "Configuração aplicada com sucesso"
