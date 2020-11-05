#!/bin/bash

END=$1
for i in $(seq 0 $END);
do
	sudo bash ./qmp.sh -o quit -s /tmp/qmp-${i}.sock
#	sudo bash ./qmp.sh -o powerdown -s /tmp/qmp-${i}.sock
done
