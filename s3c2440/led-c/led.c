/*
 * file name: led.c
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Thu 23 Aug 2018 08:06:13 AM CST
 */

#define GPFCON		(*(volatile unsigned long*) 0x56000050)
#define GPFDAT		(*(volatile unsigned long*) 0x56000054)

int main(void)
{
	GPFCON = 0x1500;
	GPFDAT = 0x0;
	return 0;
}
