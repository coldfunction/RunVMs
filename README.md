# RunVMs


## How to

* sudo mount -t tmpfs -o size=3072M tmpfs co_img/ramdisk000
* sudo sh ramdisk.sh 50
* sudo sh cpstate.sh 50
* sudo bash allrun.sh 50

## Generic VM boot - do nothing
* sudo mount -t nfs4 100.73.41.103:/home/ubuntu/vmcontainer/oci /mnt/host3_nfs/oci
* sudo mount -t nfs4 100.73.41.103:/home/ubuntu/directVisor /mnt/host3_nfs/directVisor
* sudo sh qtapall.sh 50
* sudo sh cpsnapimg.sh 50
* sudo bash allrun.sh 50

