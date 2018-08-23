#######################################################################
# file name: Makefile
# author   : Yu Liu
# email    : <ilhanwnz@hotmail.com>
# time     : Thu 23 Aug 2018 08:07:49 AM CST
#######################################################################

OBJS := start.s led.c

led.bin: $(OBJS)
	arm-linux-gcc -g -c start.s -o start.o
	arm-linux-gcc -g -c led.c -o led.o
	arm-linux-ld -Ttext 0x0 -g start.o led.o -o led_elf
	arm-linux-objcopy -O binary -S led_elf led.bin
	arm-linux-objdump -D -m arm led_elf > led.dis
clean:
	rm -rf led.dis led.bin led_elf *.o
