.equ	GPFCON,		0x56000050
.equ	GPFDAT,		0x56000054

.text
.globl	_start
_start:
	ldr	r0, =GPFCON
	mov	r1, #0x1500	@ set out pin for GPF456
	str	r1, [r0]

	ldr	r0, =GPFDAT
	mov	r1, #0x0
	str	r1, [r0]

main_loop:
	b	main_loop
