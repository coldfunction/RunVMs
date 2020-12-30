#!/bin/bash
END=$1
for i in $(seq 0 $END);
do
	sudo bash ./qmp.sh -o save -s /tmp/qmp-${i}.sock -t /home/ubuntu/vmtemplate/RunVMs/co_img/ramdisk${i}
	#echo "save ${i} okok";
#	sudo bash ./qmp.sh -o quit -s /tmp/qmp-${i}.sock
	#echo "quit ${i} okok";
done

