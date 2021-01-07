#!/bin/bash
#Petit script pour démarrer tout le binz
#zf210107.1124

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

mkdir ./db_data
# sudo chown -R $USER.$USER ./config
# sudo chmod -R 777 ./config

#docker-compose up
docker-compose up -d
docker-compose logs -f
