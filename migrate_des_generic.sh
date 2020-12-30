#!/bin/bash
i=$1

sudo bash run_vm_migrate.sh -o reg -v 1 -r 1G -m co_img/newsnapshot${i}.qcow2 -t co_img/ramdisk${i} -i ${i}

