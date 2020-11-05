import time
import subprocess
#out_bytes = subprocess.check_output(['free','-m'])
#out_text = out_bytes.decode('utf-8')
#print(out_text)
#out = out_text.split()
#fp = open("memreco.txt", "a")

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

#fp.close();
