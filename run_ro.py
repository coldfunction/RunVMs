# active (running)
import time
import random
import subprocess
import sys
import os

start = time.time()
#i=int(SETNUM) - 1
i=0
#key = random.randint(0,299999)
#key = 600000
key = 0
while i >= 0:
    try:
        out_bytes = subprocess.check_output(['service','mysql','status'])
    except:
        #print("Retry!")
        continue
    lines = 0
    lines = str(out_bytes)
    num = lines.find("active (running)")
    #print(lines)
    #print(num)
    if num > 0 :
        i = i-1
    key = 0
# Map Server is now online

#out_bytes = subprocess.check_output(['sh','/root/run.sh','>/root/test.out'])
os.system("sh /root/run.sh > /root/test.out")
start = time.time()
#print("okokok")
i = 0
while i >= 0:
    try:
        #print("runrunrun")
        out_bytes = subprocess.check_output(['cat','/root/test.out'])
        #print(out_bytes)
    except:
        #print("Retry!")
        continue
    lines = 0
    lines = str(out_bytes)
    num = lines.find("Map Server is now online")
    if num > 0 :
        i = i-1
    key = 0


end = time.time()

print(end-start)
#fp = open("/root/out.txt", "w")

#fp.write(end-start)
#fp.close()
