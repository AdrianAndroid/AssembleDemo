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
	sub	sp, sp, #8
	movw	r0, #0
	str	r0, [sp, #4]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	mov	r1, sp
	bl	_scanf
	ldr	r0, [sp]
	movw	r1, #2
	bl	___modsi3
	cmp	r0, #0
	bne	LBB0_2
@ %bb.1:
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	b	LBB0_3
LBB0_2:
	movw	r0, :lower16:(L_.str.3-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
LBB0_3:
	ldr	r0, [sp, #4]
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\350\276\223\345\205\245\344\270\200\344\270\252\346\225\260\345\255\227 : "

L_.str.1:                               @ @.str.1
	.asciz	"%d"

L_.str.2:                               @ @.str.2
	.asciz	"\345\201\266\346\225\260"

L_.str.3:                               @ @.str.3
	.asciz	"\345\245\207\346\225\260"

.subsections_via_symbols
