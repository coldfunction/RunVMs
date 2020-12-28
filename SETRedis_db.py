import time
import subprocess
import sys
import os

# redis-cli SET new_key3 "hello2"
IP     = sys.argv[1]
SETNUM = sys.argv[2]

i=0
while i < int(SETNUM):
    key = str(i)
    payload = str(os.urandom(512))
    out_bytes = subprocess.check_output(['redis-cli','-h',IP,'SET',key,payload])
    #print (out_bytes)
    i = i+1

