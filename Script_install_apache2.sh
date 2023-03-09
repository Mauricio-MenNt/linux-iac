#!/usr/bin/bash
#Este Script será utilizado como ICC (Ifraestrutura Como Código) atualização do servidor, e instalção do apache2.
#Esteja como ROOT para executar este Script

apt-get update -y #Atualização da mâquina

apt-get upgrade -y #Upgrade da mâquina

apt-get install apache2 -y #Instalando o servidor HTTP apache2 

apt-get install unzip #Instalando o unzip

cd /tmp #Local onde será baixado o conteúdo

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip #Baixando o conteúdo do git-hub

unzip main.zip

cd linux-site-dio-main #Indo para a pasta que foi criada

cp -R * /var/www/html #Copiando o conteúdo da pasta para a o diretório original do apache2 html

