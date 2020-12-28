import time
import subprocess
import sys
import importlib
importlib.reload(sys)
import os.path
from os import path

# get.${i}.txt
bootNum = sys.argv[1]

i = 0

start = time.time()
while i < int(bootNum):
   filename = "get." + str(i+1) + ".txt"
   if path.exists(filename) == False :
      continue
#   if i == 0:
#      start = time.time()
   
   f = open(filename, encoding="utf-8")
   lines = f.read()
#   num = lines.find("root@ubuntu:/home/ubuntu#")
#   num = lines.find("ubuntu@ubuntu")
   #num = lines.find("Password")
#   print(lines)
                    
   num = lines.find("GET ALL COCOTION")
   if num >= 0 :
      i = i+1
      f.close()   
   else :
      f.close()   
      continue
end = time.time()

f = open("allvmfinishGET.txt", "w")
f.write(str(end-start))
