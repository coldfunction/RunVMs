#!/bin/bash

END=$1

for i in $(seq 1 $END);
do
	#(time bash booscript.sh ${i}) &> time0.${i}.txt &
	#(time bash booscript_create_template.sh ${i}) &> time0.${i}.txt &
        #docker stop redis-lab${i} &	
        #docker stop redis-test${i} &	
        docker stop mysql${i} &	
	echo "boot ${i} okok";
done

#for i in $(seq 1 $END);
#do
#	#./template_vm_start_again.sh ${i} > ${1}.bootok
#	./generic_vm.sh ${i} > ${1}.bootok
#done

#for i in $(seq 1 $END);
#do
	#./template_vm_start_again.sh ${i} > ${1}.bootok
#	./generic_vm_again.sh ${i} > ${1}.bootok
#done

#sleep 500

#for i in $(seq 0 $END);
#do
#	sudo bash ./qmp.sh -o save -s /tmp/qmp-${i}.sock -t /home/ubuntu/cocotion/vm_templating/co_img/ramdisk${i}/
	#echo "save ${i} okok";
#done

#sleep 30

#for i in $(seq 0 $END);
#do
#	sudo bash ./qmp.sh -o quit -s /tmp/qmp-${i}.sock
	#echo "quit ${i} okok";
#done

#sleep 30

#for i in $(seq 0 $END);
#do
#	(time bash bootemplate.sh ${i}) &> time1.${i}.txt &
	#echo "boot template ${i} okok";
#done

#sleep 10

#for i in $(seq 1 $END);
#do
#	sudo bash ./qmp.sh -o quit -s /tmp/qmp-${i}.sock
	#echo "quit ${i} okok";
#done
