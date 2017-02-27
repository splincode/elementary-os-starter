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
curl -sL  http://i-hate-farms.github.io/spores/install | sudo bash - 
apt-get install elementary-tweaks
gsettings set org.pantheon.files.preferences single-click false

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
apt-get install icedtea-8-plugin openjdk-8-jre openjdk-8-jdk

# batery
add-apt-repository ppa:linrunner/tlp
apt-get update
apt-get install tlp tlp-rdw
tlp start

# sublime text 3
add-apt-repository ppa:webupd8team/sublime-text-3
apt-get update
apt-get install sublime-text-installer

# joxi
cd /tmp
wget http://dl.joxi.ru/linux/joxi-3.0.9_amd64.deb
dpkg -i joxi-3.0.9_amd64.deb
apt-get -f install libqt5declarative5 \ 
                    libqt5x11extras5   \ 
                    libqt5sql5         \
                    libqt5sql5-sqlite  \
                    libqt5script5      \
                    libqt5xmlpatterns5 \ 
                    libqt5xml5         \ 
                    libqt5multimedia5  \
                    libmcrypt4

# optimizer ram
apt-get install zram-config
swapon -s

# fix problem
apt-get install indicator-applet
apt-get install indicator-application
apt-get install indicator-applet-complete
