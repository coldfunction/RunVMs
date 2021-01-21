#!/usr/bin/expect
set times 0;
set i [lindex $argv 0];
set port [expr $i+8800];
set ip [expr $i+200]
#spawn telnet 127.0.0.1 $port

while { $times < 300 } {
   spawn telnet 127.0.0.1 $port
   expect {
	
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
	#"Escape character is" {send "\r"; set times 30000;}
	"Escape character is '^]'." {send "\r"; set times 30000;}
#	"executed automatically" {send "\n"; set times 300000000;}
	#"root login:" {send "root\r"; set times 300000000;}
 #      	eof { }
   }
   set times [ expr $times+0];
}

#set times 0;
#while { $times < 300 } {
#   expect {
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
#	"ubuntu login" {send "\r"; set times 30000;}

#   }
#   set times [ expr $times+0];
#}

set times 0;
while { $times < 300 } {
   expect {
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
	"Map Server is now online" {send "\r"; set times 30000;}
   }
   set times [ expr $times+0];
}


##################################
#set times 0;
#while { $times < 300 } {
#   expect {
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
#	"$" {send "sudo su\n"; set times 30000;}
#   }
#   set times [ expr $times+0];
#}

#set times 0;
#while { $times < 300 } {
#   expect {
#	#"Press Enter for maintenance" {send "\r"; set times 30000;}
#	"[sudo] password for ubuntu:" {send "ubuntu\r\r\r\r\r"; set times 30000;}
#   }
#   set times [ expr $times+0];
#}


#set times 0;
#while { $times < 300 } {
#   expect {
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
#	"OK" {send "python3 SETRedis_db.py 10000\r"; set times 30000;}
#   }
#   set times [ expr $times+0];
#}

