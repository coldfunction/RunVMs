#!/bin/bash

END=$1


for i in $(seq 1 $END);
do
	sudo mount -t tmpfs -o size=2048M tmpfs co_img/ramdisk${i}
done

