#!/bin/bash

# обновление системы
sudo apt-get update
sudo apt-get -f install software-properties-common
sudo apt-get -f install ubuntu-restricted-extras

# git
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get -f update
sudo apt-get -f install git

# nodejs (ver. 7)
sudo curl -sL https://deb.nodesource.com/setup_7.x | bash -
sudo apt-get -f install -y nodejs

# thunderbird (mail)
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa
sudo apt-get -f update
sudo apt-get -f install thunderbird

# chrome
sudo curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -f install ./google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

# libreoffice
sudo apt-get -f install libreoffice

# skype
sudo apt-get -f install skype

# torrent
sudo apt-get -f install transmission

#java
sudo apt-get -f install icedtea-8-plugin openjdk-8-jre openjdk-8-jdk

# sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get -f install sublime-text-installer

# joxi
cd /tmp
sudo wget http://dl.joxi.ru/linux/joxi-3.0.9_amd64.deb
sudo apt -f install ./joxi-3.0.9_amd64.deb
sudo apt-get -f install libqt5declarative5 \ 
                    libqt5x11extras5   \ 
                    libqt5sql5         \
                    libqt5sql5-sqlite  \
                    libqt5script5      \
                    libqt5xmlpatterns5 \ 
                    libqt5xml5         \ 
                    libqt5multimedia5  \
                    libmcrypt4
