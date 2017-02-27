#!/bin/bash

sudo su

# обновление системы
apt-get update && sudo apt-get upgrade
apt list --upgradable
apt-get install software-properties-common
apt-get install ubuntu-restricted-extras

# git
add-apt-repository ppa:git-core/ppa
apt-get update
apt-get install git

# nodejs (ver. 7)
curl -sL https://deb.nodesource.com/setup_7.x | bash -
apt-get install -y nodejs

# thunderbird (mail)
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa
sudo apt-get update
sudo apt-get install thunderbird

# chrome
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

# расширенные настройки
add-apt-repository ppa:mpstark/elementary-tweaks-daily
apt-get update
apt-get install elementary-tweaks

# media player
apt-get install vlc

# libreoffice
apt-get install libreoffice

# skype
apt-get install skype

# torrent
apt-get install transmission

# image
apt-get install gimp
apt-get install krita

# rar
apt-get install rar

#java
apt-get install icedtea-8-plugin openjdk-8-jre

# batery
add-apt-repository ppa:linrunner/tlp
apt-get update
apt-get install tlp tlp-rdw
tlp start

# optimizer ram
apt-get install zram-config
swapon -s
