#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
echo "Instalando pacotes..."

apt-get install apache2 -y
apt-get install unzip -y
echo "Abrindo pastas e baixando arquivos..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "Movendo arquivos..."
cd linux-site-dio-main
cp -R * /var/www/html
echo "Finalizado."


