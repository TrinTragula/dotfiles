#!/bin/bash
clear
echo -e "\e[0;33m"
echo ""
echo "                       ___  _____       _     "
echo "| |                   /   |/ __  \     | |    "
echo "| |__   __ _ _   _   / /| |   / /   ___| |__  "
echo "|  _ \ / _  | | | | / /_| |  / /   / __| '_ \  "
echo "| |_) | (_| | |_| | \___  |./ /____\__ \ | | |"
echo "|_.__/ \__,_|\__,_|     |_/\_____(_)___/_| |_|"
echo ""
echo -e "\e[0;31m"

echo '[*] Script di installazione sistema base Linux'
echo -e "\e[0;34m"
echo '[0/3] Per cominciare, aggiorniamo tutto.'
sudo apt-get update -y; sudo apt-get -y upgrade; sudo apt-get -y dist-upgrade; sudo apt-get -y autoremove; sudo apt-get -y autoclean
echo '[1/3] ||===>------------|| Installo pacchetti base..'
sudo apt-get install git rar filezilla unrar
cd
echo '[2/3] ||=========>------|| Installo oh-my-zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd
echo '[3/3] ||======>---------|| Creo il mio tanto amato .bashrc/.zshrc'
mv .bashrc ~/.bashrc
mv .zshrc ~/.zshrc
cd
echo '[*] Finito! Manca solo . .bashrc e . ./.zshrc
echo '*****************************************************'
echo -e "\e[0m"
