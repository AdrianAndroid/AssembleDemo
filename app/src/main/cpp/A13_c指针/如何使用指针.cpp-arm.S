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
	movw	r0, #20     @ int var = 20;
	str	r0, [sp, #4]
	add	r0, sp, #4
	str	r0, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	add	r1, sp, #4
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [sp]
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"var \345\217\230\351\207\217\347\232\204\345\234\260\345\235\200: %p\n"

L_.str.1:                               @ @.str.1
	.asciz	"ip \345\217\230\351\207\217\345\255\230\345\202\250\347\232\204\345\234\260\345\235\200: %p\n"

L_.str.2:                               @ @.str.2
	.asciz	"*ip \345\217\230\351\207\217\347\232\204\345\200\274: %d\n"

.subsections_via_symbols
