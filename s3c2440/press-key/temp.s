	.file	"temp.c"
	.text
	.section	.rodata
.LC0:
	.string	"1123"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$20, %esp		; assign 20 byte on stack */
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	%gs:20, %edx
	movl	%edx, -12(%ebp)		; ebp - 12 = edx 
	xorl	%edx, %edx		; edx = 0
	leal	.LC0@GOTOFF(%eax), %eax ; string -> eax
	movl	%eax, -20(%ebp)		; ebp - 20 = eax
	leal	-20(%ebp), %eax		; eax = ebp - 20
	addl	$16, %eax		; eax += 16
	movl	%eax, -16(%ebp)		; ebp - 16 = eax
	movl	$0, %eax		; eax = 0;
	movl	-12(%ebp), %ecx		; ecx = ebp - 12
	xorl	%gs:20, %ecx		; ecx = ecx ^ gs : 20
	je	.L3
	call	__stack_chk_fail_local
.L3:
	addl	$20, %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB1:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE1:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
