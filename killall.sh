#!/bin/bash

END=$1


for i in $(seq 1 $END);
do
	sudo bash ./qmp.sh -o quit -s /tmp/qmp-${i}.sock
	#echo "quit ${i} okok";
done
