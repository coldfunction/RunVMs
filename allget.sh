#!/bin/bash

END=$1

python3 checkget.py $1 &

for i in $(seq 1 $END);
do
	octet=$(printf '%.2d\n' ${i})
	python3 GETRedis_db.py 100.73.41.2${octet} 3000 get.${i}.txt &
done
