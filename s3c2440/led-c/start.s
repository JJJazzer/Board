.equ	WTDOGCON,	0x53000000

.text
.global _start
_start:
	ldr	r0, =WTDOGCON
	mov	r1, #0x0
	str	r1, [r0]		@ disabled watch dog 

	ldr	sp, =4096
	bl	main
loop:
	b	loop
