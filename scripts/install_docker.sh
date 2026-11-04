#!/bin/sh
## REQUIRES LF line ending !!!

# System aktualisieren
sudo apt-get update
# sudo apt-get upgrade -y
sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt-get upgrade -y

sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt-get install -y docker.io
sudo DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt-get install docker-compose -y

sudo systemctl enable docker
sudo systemctl start docker
