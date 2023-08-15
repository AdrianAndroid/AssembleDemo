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
	sub	sp, #16
	movs	r0, #0
	str	r0, [sp, #12]
	movs	r0, #10
	str	r0, [sp, #8]
	movs	r0, #20
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	add	r0, r1
	str	r0, [sp]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #16
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"value of a = %d, b = %d and c = %d\n"

.subsections_via_symbols
