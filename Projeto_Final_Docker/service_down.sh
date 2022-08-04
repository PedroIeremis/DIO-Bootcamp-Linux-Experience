#!/bin/bash

docker-compose down

docker rm -f container-web1
docker rm -f container-web2
docker rm -f proxy

docker rmi -f projeto_final_docker_proxy
docker rmi -f projeto_final_docker_web1
docker rmi -f projeto_final_docker_web2