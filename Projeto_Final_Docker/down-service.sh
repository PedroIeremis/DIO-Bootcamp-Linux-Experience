#!/bin/bash

docker-compose down

docker rm -f web01
docker rm -f web02
docker rm -f proxy

docker rmi -f web01
docker rmi -f web01
docker rmi -f proxy