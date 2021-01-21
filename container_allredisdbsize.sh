
#!/bin/bash

END=$1


for i in $(seq 1 $END);
do
	octet=$(printf '%.2d\n' ${i})
	echo ${octet}
	redis-cli -h 127.0.0.1 -p 60${octet} dbsize
done
