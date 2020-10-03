#!/usr/bin/env bash
#
# Instalação do Google Chrome no Debian, Ubuntu e derivados
echo "Instalando navegador google chrome"
sleep 2
#
# Adicionando o repositório 
#
echo "Preparando a instalação do google chrome no sistema"
sleep 2
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#
# Baixe e importe a chave do repositório
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#
# Atualizando repositórios e instalando o pacote
sudo apt-get update && sudo apt-get install google-chrome-stable -y
#
# Fim
clear
echo "Navegador google chrome instalado com sucesso"
sleep 2
