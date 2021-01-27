#!/bin/bash

END=$1
docker start mysql$END
#docker exec -it mysql$END /etc/init.d/mysql start
./allcontainerrun2.sh $END > ${1}.bootok
