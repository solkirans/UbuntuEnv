#!/bin/bash 



# https://www.homeautomationguy.io/home-assistant-tips/installing-docker-home-assistant-and-portainer-on-ubuntu-linux/


# Remove previous Docker installations
sudo apt-get remove docker 
sudo apt-get remove docker-engine 
sudo apt-get remove docker.io 
sudo apt-get remove containerd 
sudo apt-get remove runc



# Install Docker
sudo apt-get update

sudo apt-get install ca-certificates
sudo apt-get install curl
sudo apt-get install gnupg
sudo apt-get install lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  


sudo apt-get update
sudo apt-get install docker-ce
sudo apt-get install docker-ce-cli
sudo apt-get install containerd.io


# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

docker-compose up -d 