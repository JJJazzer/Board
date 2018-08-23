/*
 * file name: key.c
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Thu 23 Aug 2018 08:21:44 AM CST
 */

#define	REG_CONFIG(x)	(*(volatile unsigned long*) (x))
#define GPFCON		REG_CONFIG(0x56000050)
#define GPFDAT		REG_CONFIG(0x56000054)
#define GPGCON		REG_CONFIG(0x56000060)
#define GPGDAT		REG_CONFIG(0x56000064)

void init_gpio_key();
int main(void)
{
	unsigned long key_state;
	init_gpio_key();
	while(1) {
		key_state = GPFDAT;
		if (key_state & (1 << 0))
			GPFDAT |= (1 << 4);
		else
			GPFDAT &= ~(1 << 4);
		if (key_state & (1 << 2))
			GPFDAT |= (1 << 5);
		else
			GPFDAT &= ~(1 << 5);
		key_state = GPGDAT;
		if (key_state & (1 << 3))
			GPFDAT |= (1 << 6);
		else
			GPFDAT &= ~(1 << 6);
	}
	return 0;
}
void init_gpio_key()
{
	/* set gpf456 is output pins */
	GPFCON |= ((0x1 << 8) | (0x1 << 10) | (0x1 << 12));
	GPFCON &= ~((0x3 << 0) | (0x3 << 4)); /* set gpf02 is input pins */
	GPGCON &= ~(0x3 << 6);
}
