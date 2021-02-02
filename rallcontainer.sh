#!/bin/bash

END=$1
python3 container_check0toSQLstarting.py $END &
python3 container_check0toSQLstarted.py $END &
#docker start mysql$END
docker start rotest
./allcontainerrun2.sh $END &> ${1}.bootok &
