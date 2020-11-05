#!/bin/bash

END=$1

cp co_img/memory co_img/ramdisk000/

for i in $(seq 1 $END);
do
	cp co_img/state co_img/ramdisk${i}/
	cp co_img/newsnapshot.qcow2 co_img/newsnapshot${i}.qcow2
done
