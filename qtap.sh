#!/bin/bash

# Set the the tap device.
tunctl -t qtap0 -u `whoami`
brctl addif br0 qtap0
ifconfig qtap0 up

tunctl -t qtap1 -u `whoami`
brctl addif br0 qtap1
ifconfig qtap1 up

tunctl -t qtap2 -u `whoami`
brctl addif br0 qtap2
ifconfig qtap2 up
