#!/bin/bash -x

export DEBIAN_FRONTEND=noninteractive

echo "configuring ridgeline requirements"

### Install Ghost ###
apt-get install mysql-server nginx
## Login to mysql and create ghost database **
## Create mysql user for ghost
## Grant all privileges to ghost user
wget https://ghost.org/zip/ghost-latest.zip
sudo apt-get install unzip nodejs npm
mkdir -p /opt/ghost
sudo unzip -d /var/www/ghost ghost-latest.zip
cd /var/www/ghost/ ; sudo npm install
cd /var/www/ghost ; sudo npm start --production # Need to add process supervision
