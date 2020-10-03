#!/usr/bin/env bash
#
echo "Instalando Youtube-dl"
sleep 2
wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
chmod a+x /usr/local/bin/youtube-dl
hash -r
youtube-dl -U
