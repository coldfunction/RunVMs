#!/bin/bash

docker start mysql1
docker exec -it mysql1 /etc/init.d/mysql start
./allcontainerrun2.sh
