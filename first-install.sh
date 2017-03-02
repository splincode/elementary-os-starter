#!/bin/bash

sudo su

# обновление системы
apt-get update && apt-get upgrade
apt list --upgradable
apt-get -f install software-properties-common
apt-get -f install ubuntu-restricted-extras

# git
add-apt-repository ppa:git-core/ppa
apt-get -f update
apt-get -f install git

# nodejs (ver. 7)
curl -sL https://deb.nodesource.com/setup_7.x | bash -
apt-get -f install -y nodejs

# thunderbird (mail)
add-apt-repository ppa:ubuntu-mozilla-security/ppa
apt-get -f update
apt-get -f install thunderbird

# chrome
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt -f install ./google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

# libreoffice
apt-get -f install libreoffice

# skype
apt-get -f install skype

# torrent
apt-get -f install transmission

#java
apt-get -f install icedtea-8-plugin openjdk-8-jre openjdk-8-jdk

# sublime text 3
add-apt-repository ppa:webupd8team/sublime-text-3
apt-get update
apt-get -f install sublime-text-installer

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
