#!/bin/bash
echo "----------------------------------------------------------"
echo "Atualizando servidor e instalando pacotes necessários..."
apt update
apt-get install apache2 unzip wget -y
echo "1 - OK!"

echo
echo "----------------------------------------------------------"
echo "Baixando e copiando arquivos necessários para aplicação..."
rm /var/www/html/index.html
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
echo "2 - OK!"

echo
echo "----------------------------------------------------------"
echo "Restartando serviços..."
/etc/init.d/apache2 restart
echo "3 - OK!"
echo
echo "----------------------------------------------------------"
echo "Processo Concluído!"
