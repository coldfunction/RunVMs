#!/bin/bash

END=$1

for i in $(seq 0 $END);
do
	(time bash booscript.sh ${i}) &> time0.${i}.txt &
	#sleep 10
	#echo "boot ${i} okok";
done


