#######################################################################
# file name: Makefile
# author   : Yu Liu
# email    : <ilhanwnz@hotmail.com>
# time     : Thu 23 Aug 2018 07:59:21 AM CST
#######################################################################

OBJS := led.s
led.bin: 
	arm-linux-gcc -c led.s -o led.o
	arm-linux-ld -Ttext 0x0 -g led.o -o led_elf
	arm-linux-objcopy -O binary -S led_elf led.bin
clean:
	rm -rf led.bin	*.o led_elf
