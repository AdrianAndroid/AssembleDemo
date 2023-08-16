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
	mov	r0, #0
	str	r0, [sp, #4]
	ldrh	r0, [sp]
	orr	r0, r0, #1
	strh	r0, [sp]
	ldrh	r0, [sp]
	bic	r0, r0, #2
	strh	r0, [sp]
	ldrh	r0, [sp]
	orr	r0, r0, #4
	strh	r0, [sp]
	ldrh	r0, [sp]
	bic	r0, r0, #8
	strh	r0, [sp]
	ldrh	r0, [sp]
	orr	r0, r0, #112
	bic	r0, r0, #128
	strh	r0, [sp]
	ldrb	r1, [sp, #2]
	ldrh	r0, [sp]
	orr	r0, r0, r1, lsl #16
	movw	r1, #255
	movt	r1, #254
	and	r1, r0, r1
	orr	r0, r1, #65280
	lsr	r1, r1, #16
	strb	r1, [sp, #2]
	strh	r0, [sp]
	ldrh	r0, [sp]
	and	r1, r0, #1
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	ldrh	r0, [sp]
	ubfx	r1, r0, #1, #1
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
	ldrh	r0, [sp]
	ubfx	r1, r0, #2, #1
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	ldrh	r0, [sp]
	ubfx	r1, r0, #3, #1
	movw	r0, :lower16:(L_.str.3-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
	ldrh	r0, [sp]
	ubfx	r1, r0, #4, #4
	movw	r0, :lower16:(L_.str.4-(LPC0_4+8))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
	ldrb	r1, [sp, #2]
	ldrh	r0, [sp]
	orr	r0, r0, r1, lsl #16
	ubfx	r1, r0, #8, #9
	movw	r0, :lower16:(L_.str.5-(LPC0_5+8))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+8))
LPC0_5:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"f1: %u\n"

L_.str.1:                               @ @.str.1
	.asciz	"f2: %u\n"

L_.str.2:                               @ @.str.2
	.asciz	"f3: %u\n"

L_.str.3:                               @ @.str.3
	.asciz	"f4: %u\n"

L_.str.4:                               @ @.str.4
	.asciz	"type: %u\n"

L_.str.5:                               @ @.str.5
	.asciz	"my_int: %u\n"

.subsections_via_symbols
