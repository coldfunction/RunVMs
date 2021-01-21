#!/bin/bash

END=$1

for i in $(seq 1 $END);
do
	octet=$(printf '%.2d\n' ${i})
	sudo bash ./qmp.sh -o migrate -s /tmp/qmp-${i}.sock -d 192.168.123.103:40${octet} &
	#sudo bash ./qmp.sh -o migrate -s /tmp/qmp-${i}.sock -d 100.73.41.103:40${octet} &
done

