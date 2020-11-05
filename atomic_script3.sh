#!/usr/bin/expect
set times 0;
set i [lindex $argv 0];
set port [expr $i+8800];
while { $times < 300 } {
   spawn telnet 127.0.0.1 $port
   expect {
	
	"Escape character is" {send "\n"; set times 300;}
       	eof { }
   }
   set times [ expr $times+1];
}

expect "#"
send "\r"
#send "touch aa.txt\r"




