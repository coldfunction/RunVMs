#!/bin/bash
i=$1

#sudo bash newrunvm.sh -o backed_memory -v 1 -r 2048M -m /home/ubuntu/cocotion/vm_templating/co_img/newsnapshot.qcow2 -t /home/ubuntu/cocotion/vm_templating/co_img/ramdisk${i}/ -i ${i}
#sudo bash newrunvm.sh -o template -v 1 -r 2048M -m /home/ubuntu/cocotion/vm_templating/co_img/newsnapshot.qcow2 -t /home/ubuntu/cocotion/vm_templating/co_img/ramdisk${i}/ -i ${i}

#sudo bash run_vm2.sh -o template -v 1 -r 2G -m co_img/newsnapshot${i}.qcow2 -t co_img/ramdisk${i} -i ${i}
#sudo bash run_vm2.sh -o template -v 1 -r 2G -m co_img/newsnapshot${i}.qcow2 -t co_img/ramdisk1 -i ${i}
sudo bash run_vm2.sh -o reg -v 1 -r 32G -m co_img/newsnapshot${i}.qcow2 -t co_img/ramdisk000 -i ${i}
#sudo bash run_vm2.sh -o reg -v 1 -r 1G -m co_img/snap_container.qcow2 -t co_img/ramdisk000 -i ${i}

