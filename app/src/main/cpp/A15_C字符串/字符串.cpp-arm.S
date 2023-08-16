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
	sub	sp, sp, #12
	movw	r0, #0
	str	r0, [r7, #-4]
	movw	r0, :lower16:(L___const.main.site-(LPC0_0+8))
	movt	r0, :upper16:(L___const.main.site-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	ldrb	r1, [r0]
	strb	r1, [sp, #1]
	ldrb	r1, [r0, #1]
	strb	r1, [sp, #2]
	ldrb	r1, [r0, #2]
	strb	r1, [sp, #3]
	ldrb	r1, [r0, #3]
	strb	r1, [sp, #4]
	ldrb	r1, [r0, #4]
	strb	r1, [sp, #5]
	ldrb	r1, [r0, #5]
	strb	r1, [sp, #6]
	ldrb	r0, [r0, #6]
	strb	r0, [sp, #7]
	add	r1, sp, #1
	movw	r0, :lower16:(L_.str-(LPC0_1+8))
	movt	r0, :upper16:(L_.str-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z5main2v                      @ -- Begin function _Z5main2v
	.p2align	2
	.code	32                              @ @_Z5main2v
__Z5main2v:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #8
	movw	r0, :lower16:(L___const._Z5main2v.site-(LPC1_0+8))
	movt	r0, :upper16:(L___const._Z5main2v.site-(LPC1_0+8))
LPC1_0:
	add	r0, pc, r0
	ldrb	r1, [r0]
	strb	r1, [sp, #1]
	ldrb	r1, [r0, #1]
	strb	r1, [sp, #2]
	ldrb	r1, [r0, #2]
	strb	r1, [sp, #3]
	ldrb	r1, [r0, #3]
	strb	r1, [sp, #4]
	ldrb	r1, [r0, #4]
	strb	r1, [sp, #5]
	ldrb	r1, [r0, #5]
	strb	r1, [sp, #6]
	ldrb	r0, [r0, #6]
	strb	r0, [sp, #7]
	add	r1, sp, #1
	movw	r0, :lower16:(L_.str-(LPC1_1+8))
	movt	r0, :upper16:(L_.str-(LPC1_1+8))
LPC1_1:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L___const.main.site:                    @ @__const.main.site
	.asciz	"RUNOOB"

L_.str:                                 @ @.str
	.asciz	"\350\217\234\351\270\237\346\225\231\347\250\213: %s\n"

L___const._Z5main2v.site:               @ @__const._Z5main2v.site
	.asciz	"RUNOOB"

.subsections_via_symbols
