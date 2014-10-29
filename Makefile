all: rkflashtool

rkflashtool: rkflashtool.c
	gcc -o rkflashtool rkflashtool.c -lusb-1.0 -O2 -W -Wall -s

param:
	sudo ./rkflashtool r 0x0000 0x2000 > /tmp/parm

mac: 
	gcc -I/opt/local/include -I/opt/local/include/libusb-1.0 -L/opt/local/lib -o rkflashtool rkflashtool.c -lusb-1.0 -O2 -W -Wall
