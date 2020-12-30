#!/bin/bash

END=$1

for i in $(seq 1 $END);
do
	octet=$(printf '%.2x\n' ${i})
	sudo bash ./qmp.sh -o migrate -s /tmp/qmp-${i}.sock -d 192.168.123.103:40${octet}
done

