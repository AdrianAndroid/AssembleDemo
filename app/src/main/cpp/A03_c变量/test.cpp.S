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
	bl	__Z9addtwonumv
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.section	__DATA,__data
	.globl	_x                              @ @x
	.p2align	2
_x:
	.long	1                               @ 0x1

	.globl	_y                              @ @y
	.p2align	2
_y:
	.long	2                               @ 0x2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"result \344\270\272: %d\n"

.subsections_via_symbols
