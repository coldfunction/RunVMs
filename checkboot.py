import time
import subprocess
import sys

bootNum = sys.argv[1]

i = 0

start = time.time()
while i < int(bootNum):
   filename = str(i+1)+".bootok"
   f = open(filename)
   lines = f.read()
#   num = lines.find("root@ubuntu:/home/ubuntu#")
   num = lines.find("ubuntu@ubuntu")
   if num > 0 :
      i = i+1
   f.close()   
end = time.time()

f = open("allvmfinishBoot.txt", "w")
f.write(str(end-start))


