
#!/bin/bash

END=$1


for i in $(seq 1 $END);
do
	octet=$(printf '%.2d\n' ${i})
	echo ${octet}
	redis-cli -h 100.73.41.2${octet} ping
done
