#!/bin/bash
clear
echo -e "\e[0;33m"
echo ""
echo "                       ___  _____       _             _____  _____  _____ "
echo "| |                   /   |/ __  \     | |           |  _  ||  _  ||____ |"
echo "| |__   __ _ _   _   / /| |   / /   ___| |__   __   _| |/| || |/| |    / /"
echo "|  _ \ / _  | | | | / /_| |  / /   / __| '_ \  \ \ / /  /| ||  /| |    \ \ "
echo "| |_) | (_| | |_| | \___  |./ /____\__ \ | | |  \ V /\ |_/ /\ |_/ /.___/ /"
echo "|_.__/ \__,_|\__,_|     |_/\_____(_)___/_| |_|   \_(_)\___(_)\___/ \____/ "
echo ""
echo -e "\e[0;31m"

echo '[*] Script di installazione sistema base Linux - v 0.02'
echo -e "\e[0;34m"
echo '[0/4] Per cominciare, aggiorniamo tutto.'
apt-get update -y; apt-get -y upgrade; apt-get -y dist-upgrade; apt-get -y autoremove; apt-get -y autoclean
echo '[1/4] ||===>------------|| Installo pacchetti base..'
sudo apt-get install git rar filezilla unrar
echo '[2/4] ||======>---------|| Creo il mio tanto amato .bashrc'
mv .bashrc ~/.bashrc
cd
echo '[3/4] ||=========>------|| Copio repo utili e creo /opt/coding/'
mkdir /opt/coding
cd /opt/coding
cd
echo '[4/4] ||===============>|| Installo Dwarf Fortress'
mkdir /opt/dwarffortress
cd /opt/dwarffortress
wget http://www.bay12games.com/dwarves/df_43_05_linux.tar.bz2 &> /dev/null
tar df_43_05_linux.tar.bz2 &> /dev/null
cd
echo '[*] Finito! Manca solo . .bashrc'
echo '*****************************************************'
echo -e "\e[0m"
