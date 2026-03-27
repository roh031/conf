#!/usr/bin/env bash
#
#
echo "Instalando SHELL Zsh"
sleep 2
sudo apt install git curl wget zsh -y 
#
cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

