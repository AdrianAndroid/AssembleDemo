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
	ldrb.w	r0, [sp, #4]
	orr	r0, r0, #1
	strb.w	r0, [sp, #4]
	ldrb.w	r0, [sp, #4]
	orr	r0, r0, #14
	strb.w	r0, [sp, #4]
	ldrb.w	r0, [sp, #4]
	orr	r0, r0, #240
	strb.w	r0, [sp, #4]
	ldrb.w	r0, [sp, #4]
	and	r1, r0, #1
	ubfx	r2, r0, #1, #3
	lsrs	r3, r0, #4
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	add	r0, sp, #4
	str	r0, [sp]
	ldr	r1, [sp]
	ldrb	r0, [r1]
	and	r0, r0, #254
	strb	r0, [r1]
	ldr	r1, [sp]
	ldrb	r0, [r1]
	and	r0, r0, #247
	strb	r0, [r1]
	ldr	r1, [sp]
	ldrb	r0, [r1]
	orr	r0, r0, #16
	strb	r0, [r1]
	ldr	r0, [sp]
	ldrb	r0, [r0]
	and	r1, r0, #1
	ubfx	r2, r0, #1, #3
	lsrs	r0, r0, #4
	and	r3, r0, #255
	movw	r0, :lower16:(L_.str-(LPC0_1+4))
	movt	r0, :upper16:(L_.str-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"%d,%d,%d\n"

.subsections_via_symbols
