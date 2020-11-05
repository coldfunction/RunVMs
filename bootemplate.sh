#!/bin/bash

i=$1

sudo bash newrunvm.sh -o template -v 1 -r 1024M -m /home/ubuntu/cocotion/vm_templating/co_img/snapshot.qcow2.${i} -t /home/ubuntu/cocotion/vm_templating/co_img/ramdisk${i}/ -i ${i}
./atomic_script3.sh ${i}
