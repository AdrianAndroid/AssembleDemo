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
	movw	r0, #0
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"ptr \347\232\204\345\234\260\345\235\200\346\230\257 %p\n"

.subsections_via_symbols
