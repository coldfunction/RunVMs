#!/usr/bin/expect
set times 0;
set i [lindex $argv 0];
set port [expr $i+8800];
set ip [expr $i+200]

while { $times < 300 } {
   spawn sudo docker exec -it mysql1 bash
   expect {
	"#" {send "sh /root/run.sh\r\r\r"; set times 30000;}
   }
   set times [ expr $times+0];
}

set times 0;
while { $times < 300 } {
   expect {
	"Map Server is now online" {send "\r"; set times 30000;}
   }
   set times [ expr $times+0];
}
