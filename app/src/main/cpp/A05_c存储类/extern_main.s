	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	1
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	movs	r0, #5
	movw	r1, :lower16:(_count-(LPC0_0+4))
	movt	r1, :upper16:(_count-(LPC0_0+4))
LPC0_0:
	add	r1, pc
	str	r0, [r1]
	bl	__Z12write_externv
	movs	r0, #0
	pop	{r7, pc}
                                        @ -- End function
	.globl	_count                          @ @count
.zerofill __DATA,__common,_count,4,2
.subsections_via_symbols
