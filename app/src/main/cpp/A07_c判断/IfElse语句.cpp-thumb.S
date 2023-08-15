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
	movs	r0, #100
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #20
	bge	LBB0_2
@ %bb.1:
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	b	LBB0_3
LBB0_2:
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
LBB0_3:
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"a \345\260\217\344\272\216 20\n"

L_.str.1:                               @ @.str.1
	.asciz	"a \345\244\247\344\272\216 20\n"

L_.str.2:                               @ @.str.2
	.asciz	"a \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
