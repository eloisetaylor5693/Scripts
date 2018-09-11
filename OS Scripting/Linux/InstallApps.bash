sudo apt install ubuntu-drivers-common
sudo apt-get update        # Fetches the list of available updates
sudo apt-get upgrade       # Strictly upgrades the current packages
sudo apt-get dist-upgrade  # Installs updates (new ones)


sudo apt-get install firefox
sudo apt-get install rkhunter
sudo apt-get install chkrootkit
sudo apt-get install git

# Node
## https://nodejs.org/en/download/package-manager/
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm

# fix issue where linux can't find node, because it's named nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node


# VS Code 
## https://code.visualstudio.com/docs/setup/linux
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code


# Cleanup packages that are not required
sudo apt autoremove        