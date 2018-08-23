#######################################################################
# file name: Makefile
# author   : Yu Liu
# email    : <ilhanwnz@hotmail.com>
# time     : Thu 23 Aug 2018 08:43:18 AM CST
#######################################################################

OBJS := start.s key.c

key.bin: $(OBJS)
	arm-linux-gcc -g -c start.s -o start.o 
	arm-linux-gcc -g -c key.c -o key.o
	arm-linux-ld -Ttext 0x0 -g start.o key.o -o key_elf
	arm-linux-objcopy -O binary -S key_elf key.bin

clean:
	rm -rf key.bin key_elf *.o
