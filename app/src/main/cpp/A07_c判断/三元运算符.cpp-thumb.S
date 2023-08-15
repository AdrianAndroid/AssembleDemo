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
	sub	sp, #8
	movs	r0, #0
	str	r0, [sp, #4]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	mov	r1, sp
	bl	_scanf
	ldr	r0, [sp]
	movs	r1, #2
	bl	___modsi3
	cbnz	r0, LBB0_2
@ %bb.1:
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	b	LBB0_3
LBB0_2:
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
LBB0_3:
	ldr	r0, [sp, #4]
	add	sp, #8
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
