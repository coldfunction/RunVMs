import time
import subprocess
import sys
import importlib
importlib.reload(sys)
import os.path
from os import path


bootNum = sys.argv[1]

i = 0

start = time.time()
while i < int(bootNum):
   filename = str(i+1)+".bootok"
   if path.exists(filename) == False :
      continue
   f = open(filename, encoding="utf-8")
   lines = f.read()
#   num = lines.find("root@ubuntu:/home/ubuntu#")
#   num = lines.find("ubuntu@ubuntu")
   #num = lines.find("Password")
   num = lines.find("Map Server is now online")
   if num > 0 :
      i = i+1
      f.close() 
   else :
      f.close()
      continue  
end = time.time()

f = open("allvmfinishBoot.txt", "w")
f.write(str(end-start))
