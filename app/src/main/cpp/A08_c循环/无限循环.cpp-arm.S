	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #4
	movw	r0, #0
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	b	LBB0_1
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\350\257\245\345\276\252\347\216\257\344\274\232\346\260\270\350\277\234\346\211\247\350\241\214\344\270\213\345\216\273\357\274\201\n"

.subsections_via_symbols
