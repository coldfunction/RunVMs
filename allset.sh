#!/bin/bash

END=$1


for i in $(seq 15 $END);
do
	python3 SETRedis_db.py 100.73.41.2${i} 300000
done

