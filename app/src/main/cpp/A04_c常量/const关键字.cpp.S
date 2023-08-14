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
	sub	sp, #20
	movs	r0, #0
	str	r0, [sp, #16]
	movs	r0, #10
	str	r0, [sp, #12]
	movs	r0, #5
	str	r0, [sp, #8]
	movs	r0, #10
	strb	r0, [r7, #-13]
	movs	r0, #50
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	movs	r1, #10
	bl	_printf
	movs	r0, #0
	add	sp, #20
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"value of area : %d"

L_.str.1:                               @ @.str.1
	.asciz	"%c"

.subsections_via_symbols
