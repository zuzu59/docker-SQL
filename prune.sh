#!/bin/bash
#Petit script pour 'purger' tout le binz
#zf210107.1133

docker container ls -a

echo "
ATTENTION: cela va purger aussi tout ce qui est 'arrêté' dans Docker, donc vous risquez de perdre des données !

ATTENTION, il faut arrêter le binz avant avec un:

./stop.sh

CTRL-C pour arrêter ou CR pour continuer !
"
read

docker system prune -a -f --volumes
docker container ls -a

echo "
ATTENTION: les données de la DB se trouvent toujours dans le dossier:

./db_data

"
