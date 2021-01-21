
#!/bin/bash

END=$1


for i in $(seq 1 $END);
do
	docker network create net${i}
done

