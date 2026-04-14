#!/bin/bash

# Instalando pacotes
apt update && apt install -y htop mtr iputils-ping bash-completion curl wget iproute2 net-tools nano vim build-essential traceroute

# Ajustes de Sistema (Opcional se não houver overrides antigos)
rm -f /etc/systemd/system/docker.service.d/override.conf
update-grub

# Instalação do Docker Engine Oficial 
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

#Criando Compose
docker compose -f /usr/local/src/Docker/docker-compose.yml up -d

#Start docker
sudo systemctl start docker