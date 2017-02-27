#!/bin/bash

# обновление системы
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install ubuntu-restricted-extras

# chrome
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install -f

# расширенные настройки
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-get update
sudo apt-get install elementary-tweaks

# media player
sudo apt-get install vlc

# libreoffice
sudo apt-get install libreoffice

# skype
sudo apt-get install skype

# torrent
sudo apt-get install transmission

# image
sudo apt-get install gimp
sudo apt-get install krita

# rar
sudo apt-get install rar

#java
sudo apt-get install icedtea-8-plugin openjdk-8-jre

# batery
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
sudo tlp start

# optimizer ram
sudo apt-get install zram-config
swapon -s
