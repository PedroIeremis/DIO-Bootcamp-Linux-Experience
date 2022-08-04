#!/bin/bash

echo "-----------------------------------------------"
echo "Contruindo containers com compose"
docker-compose up -d

echo "-----------------------------------------------"
echo "Configurações e Verificação de pasta nfs-server"
docker exec container-web1 showmount -e
docker exec container-web1 ./shellweb1.sh
docker exec container-web1 /etc/init.d/nfs-kernel-server restart
docker exec container-web1 /etc/init.d/nfs-common restart
docker exec container-web1 /etc/init.d/rpcbind restart
docker exec container-web1 /etc/init.d/nginx restart
echo "-----------------------------------------------"
echo "Requisição de pasta nfs-server pelo cliente"
docker exec container-web2 mount -o v3 10.17.0.2:/usr/share/nginx/html /usr/share/nginx/html
echo "-----------------------------------------------"
echo "Restartando serviço Nginx web2"
docker exec container-web2 /etc/init.d/nginx restart
echo "-----------------------------------------------"
echo "------------- Processo Finalizado -------------"
echo "-----------------------------------------------"