
#!/bin/bash

END=$1

bash allget_container.sh $END &
for i in $(seq 1 $END);
do
#	docker run -v /home/ubuntu/containerData/data${i}:/data --name redis-lab${i} -d redis
	docker run -v /home/ubuntu/containerData/data${i}:/data --name redis-lab${i} -d redis &
	#octet=$(printf '%.2d\n' ${i})
	#docker run --net net${i} -v /home/ubuntu/containerData/data${i}:/data --name redis-test${i} -p 60${octet}:6379 -d redis
	#docker run --net net${i} -v /home/ubuntu/containerData/data${i}:/data --name redis-test${i} -p 60${octet}:6379 redis &
done

