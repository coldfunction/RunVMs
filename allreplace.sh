#!/bin/bash
str=$1

python3 replace.py "/etc/network/interfaces" "auto ens2" "auto ens3"
python3 replace.py "/etc/network/interfaces" "iface ens2 inet static" "iface enss3 inet static"
python3 replace.py "/etc/network/interfaces" "address 100.73.41.201" "address 100.73.41."${str}

python3 replace.py "/etc/redis/redis.conf" "bind 127.0.0.1" "bind 100.73.41."${str}
python3 replace.py "/etc/redis/redis.conf" "bind 100.73.41.201" "bind 100.73.41."${str}
