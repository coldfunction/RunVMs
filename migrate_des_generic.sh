#!/bin/bash
END=$1

for i in $(seq 1 $END);
do

	sudo bash run_vm_migrate.sh -o reg -v 1 -r 32G -m co_img/newsnapshot${i}.qcow2 -t co_img/ramdisk${i} -i ${i}

done
