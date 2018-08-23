#######################################################################
# file name: start.s
# author   : Yu Liu
# email    : <ilhanwnz@hotmail.com>
# time     : Thu 23 Aug 2018 08:19:55 AM CST
#######################################################################

.equ	WTDOGCON,	0x53000000

.text
.globl	_start
_start:
	bl	disable_wtdog
	ldr	sp, =4096
	bl	main
lp:
	b	lp

disable_wtdog:
	ldr	r0, =WTDOGCON
	mov	r1, #0x0
	str	r1, [r0]
	
	mov	pc, lr
