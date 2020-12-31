#!/bin/bash
END=$1

for i in $(seq 1 $END);
do

	sudo bash run_vm_migrate.sh -o template -v 1 -r 1G -m co_img/newsnapshot${i}.qcow2 -t /home/ubuntu/co_img/ramdisk${i} -i ${i}

done
