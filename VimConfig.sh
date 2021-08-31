#!/usr/bin/env bash
#
echo "Criando o arquivo de configuração do VIM"
sleep 2
apt install vim -y
echo "set number" > ~/.vimrc
echo "map q :quit<CR>" >> ~/.vimrc
echo "map <C-s> :wq<CR>" >> ~/.vimrc
echo "set incsearch" >> ~/.vimrc
echo "set wildmenu" >> ~/.vimrc
echo "set laststatus=2" >> ~/.vimrc
echo "set confirm" >> ~/.vimrc
echo "color murphy" >> ~/.vimrc
echo "stty -ixon" >> ~/.zshrc
echo "stty -ixon" >> ~/.bashrc
source ~/.bashrc
source ~/.zshrc
#
#
echo "Concluído"
sleep 2
