#!/bin/bash

END=$1


for i in $(seq 1 $END);
do
	cp co_img/newsnapshot.qcow2 co_img/newsnapshot${i}.qcow2
done

rm *.bootok
rm memreco.txt
rm allvmfinishBoot.txt
