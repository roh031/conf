#!/usr/bin/env bash
#
#
echo "Instalando SHELL Zsh"
sleep 2
sudo apt install git curl wget zsh -y 
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

