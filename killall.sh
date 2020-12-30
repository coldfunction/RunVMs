#!/bin/bash
END=$1
for i in $(seq 0 $END);
do
	sudo bash ./qmp.sh -o quit -s /tmp/qmp-${i}.sock
	#echo "save ${i} okok";
#	sudo bash ./qmp.sh -o quit -s /tmp/qmp-${i}.sock
	#echo "quit ${i} okok";
done

