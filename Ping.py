import time
import random
import subprocess
import sys
import os

IP     = sys.argv[1]
SETNUM = sys.argv[2]
mFILE = sys.argv[3]
start = time.time()
#i=int(SETNUM) - 1
i=0
#key = random.randint(0,299999)
#key = 600000
key = 0
while i >= 0:
    #key = str(i)
    #key = random.randint(0,299999)
    #subprocess.run(["redis-cli", "SET", key, payload], shell=True)
    #subprocess.run(["redis-cli", "SET", key, "QQQ"], shell=True)
    #print(key)
    try:
        #print(IP)
        out_bytes = subprocess.check_output(['ping','-c', '1', IP])
    except:
        print("Retry!") 
        #start = time.time() 
        continue
        #break
    lines = 0
    lines = str(out_bytes)
    #print (out_bytes)
    print (lines)
    num = lines.find("64 bytes from")
    #print (num)
    if num < 0 :
        print("Retry@@!")
        continue
    #print(i)
    i = i-1
    #key = random.randint(0,299999)
    #key = 299999
    key = 0
end = time.time()

f = open("allvmping.txt", "w")
f.write(str(end-start))
f.close()
