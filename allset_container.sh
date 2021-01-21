#!/bin/bash

END=$1


for i in $(seq 1 $END);
do
	# for containers
	#octet=$((i+1))
	#echo ${octet}
	# for VMs
	octet=$(printf '%.2d\n' ${i})
	python3 SETRedis_db.py 100.73.41.2${octet} 300000
	# for Containers
	#python3 SETRedis_db.py 172.17.0.${octet} 300000
done

