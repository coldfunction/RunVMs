#!/bin/bash

END=$1


for i in $(seq 0 $END);
do
	(time bash bootemplate.sh ${i}) &> time1.${i}.txt &
	#echo "boot template ${i} okok";
done

