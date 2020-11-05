# RunVMs


## How to

* sudo mount -t tmpfs -o size=3072M tmpfs co_img/ramdisk000
* sudo sh ramdisk.sh 50
* sudo sh cpstate.sh 50
* sudo bash allrun.sh 50

## Generic VM boot
* sudo bash run_vm2.sh -o reg -v 1 -r 2G -m co_img/newsnapshot.qcow2 -t co_img/ramdisk000 -i 1
