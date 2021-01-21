
#!/bin/bash

END=$1


for i in $(seq 1 $END);
do
	#octet=$(printf '%.2d\n' ${i})
	octet=$((i+1))
	echo ${octet}
#	redis-cli -h 100.73.41.2${octet} dbsize
	redis-cli -h 172.17.0.${octet} dbsize
done
