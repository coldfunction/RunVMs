#!/usr/bin/expect
set timeout 800
set times 0;
set i [lindex $argv 0];
set port [expr $i+8800];
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
	"ubuntu login:" {send "ubuntu\r"; set times 30000;}
   }
   set times [ expr $times+0];
}

set times 0;
while { $times < 300 } {
   expect {
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
	"Password:" {send "ubuntu\r"; set times 30000;}
   }
   set times [ expr $times+0];
}

set times 0;
while { $times < 300 } {
   expect {
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
	"ubuntu@ubuntu:~$" {send "sudo su\n"; set times 30000;}
   }
   set times [ expr $times+0];
}

set times 0;
while { $times < 300 } {
   expect {
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
	"password for ubuntu:" {send "ubuntu\n"; set times 30000;}
   }
   set times [ expr $times+0];
}



set times 0;
while { $times < 300 } {
   expect {
	#"Press Enter for maintenance" {send "\r"; set times 30000;}
	"root@ubuntu:/home/ubuntu#" {send "bash bodytrack.sh\n\n\n\n\n\n\n\n\n"; set times 30000;}
   }
   set times [ expr $times+0];
}


