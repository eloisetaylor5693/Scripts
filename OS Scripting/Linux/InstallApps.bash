#!/bin/bash

sudo apt install ubuntu-drivers-common
sudo apt-get update        # Fetches the list of available updates
sudo apt-get upgrade       # Strictly upgrades the current packages
sudo apt-get dist-upgrade  # Installs updates (new ones)


sudo apt-get install -y firefox
sudo apt-get install -y rkhunter
sudo apt-get install -y chkrootkit
sudo apt-get install -y git

echo Node
## https://nodejs.org/en/download/package-manager/
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# fix issue where linux can't find node, because it's sometimes named nodejs
#sudo ln -s /usr/bin/nodejs /usr/bin/node


echo VS Code 
## https://code.visualstudio.com/docs/setup/linux
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code

echo Image editing 
sudo apt-get install -y deluge
sudo apt-get install -y GIMP
sudo apt-get install -y digiKam


echo Python
sudo apt-get install python3-pip
sudo apt install python-pip
sudo apt-get install idle3
# Ubuntu 16.04 +
sudo snap install [pycharm-professional|pycharm-community] --classic

# Cleanup packages that are not required (reboot first)
#sudo apt autoremove 
