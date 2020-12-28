import time
import random
import subprocess
import sys
import os

IP     = sys.argv[1]
SETNUM = sys.argv[2]
mFILE = sys.argv[3]
start = time.time()
i=int(SETNUM) - 1
key = random.randint(0,299999)
while i >= 0:
    #key = str(i)
    #key = random.randint(0,299999)
    #subprocess.run(["redis-cli", "SET", key, payload], shell=True)
    #subprocess.run(["redis-cli", "SET", key, "QQQ"], shell=True)
    print(key)
    try:
        out_bytes = subprocess.check_output(['redis-cli','-h',IP,'GET',str(key)])
    except:
        print("Retry!") 
        #start = time.time() 
        continue
        #break
    lines = 0
    lines = str(out_bytes)
    #print (out_bytes)
    #print (lines)
    if lines == "b'\\n'" :
        print("Retry@@!")
        continue
#    num = lines.find("Connection refused")
 #   num2 = lines.find("error")
  #  num3 = lines.find("(nil)")
   # num4 = lines.find("Error")
   # num5 = lines.find("Could not connect to Redis")
   # if num > 0 or num2 > 0 or num3>0 or num4>0 or num5>0:
   #     print("Retry@@!")
   #     print(num)
   #     print(num2)
   #     print(num3)
   #     print(num4)
   #     print(num5)
   #     print(lines)
        #break
  #      continue
    #print(i)
    i = i-1
    key = random.randint(0,299999)
end = time.time()

fp = open(mFILE, "w")

fp.write("GET ALL COCOTION")
print(end-start)


