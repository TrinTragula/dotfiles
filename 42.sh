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
sudo apt -qq update -y && sudo apt -qq -y upgrade && sudo apt -qq -y dist-upgrade && sudo apt -qq -y autoremove && sudo apt-get -qq -y autoclean
echo '[1/3] ||===>------------|| Installo pacchetti base..'
sudo apt -qq install -y git rar unrar htop qemu-kvm dos2unix
echo '[2/3] ||=========>------|| Installo il mio tanto amato .bashrc e TempleOS'
cp .bashrc ~/.bashrc
mkdir ~/.templeos && cd ~/.templeos && wget -q -m https://templeos.org/Downloads/QEMU/ 
cd -
echo '[3/3] ||===============>|| Attivo .bashrc'
exec bash
echo '[*] Finito!
echo -e "\e[0m"
