#!/bin/bash

END=$1

python3 checkget.py $1 &

for i in $(seq 1 $END);
do
	octet=$((i+1))
	python3 GETRedis_db.py 172.17.0.${octet} 3000 get.${i}.txt &
	#octet=$(printf '%.2d\n' ${i})
	#python3 GETRedis_db_port.py 60${octet} 3000 get.${i}.txt &
done

