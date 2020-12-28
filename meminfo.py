import time
import subprocess
#out_bytes = subprocess.check_output(['free','-m'])
#out_text = out_bytes.decode('utf-8')
#print(out_text)
#out = out_text.split()
#fp = open("memreco.txt", "a")

import os

#echo 50000 > /sys/kernel/mm/ksm/pages_to_scan
#os.system("echo 50000 > /sys/kernel/mm/ksm/pages_to_scan")
#os.system("echo 1 > /sys/kernel/mm/ksm/run")

out_bytes = subprocess.check_output(['free','-m'])
out_text = out_bytes.decode('utf-8')
out = out_text.split()
b = int(out[8])

i=0   
#while i<2480:
while i<2480:
    out_bytes = subprocess.check_output(['free','-m'])
    out_text = out_bytes.decode('utf-8')
    out = out_text.split()
    nowmem = int(out[8])
    nowmem = nowmem - b
    #fp.write(str(nowmem)+ '\n')
    print(nowmem, flush=True)
    time.sleep(1)
    i = i + 1
    os.system("echo 1 > /sys/kernel/mm/ksm/run")

#fp.close();
