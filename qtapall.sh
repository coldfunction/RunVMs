#!/bin/bash

END=$1

for i in $(seq 0 $END);
do
# Set the the tap device.
	tunctl -t qtap${i} -u `whoami`
	brctl addif br0 qtap${i}
	ifconfig qtap${i} up
done
