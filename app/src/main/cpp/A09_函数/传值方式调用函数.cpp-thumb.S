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
	sub	sp, #12
	movs	r0, #0
	str	r0, [sp, #8]
	movs	r0, #100
	str	r0, [sp, #4]
	movs	r0, #200
	str	r0, [sp]
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	__Z4swapii
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #12
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z4swapii                      @ -- Begin function _Z4swapii
	.p2align	1
	.code	16                              @ @_Z4swapii
	.thumb_func	__Z4swapii
__Z4swapii:
@ %bb.0:
	sub	sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	str	r0, [sp]
	ldr	r0, [sp, #4]
	str	r0, [sp, #8]
	ldr	r0, [sp]
	str	r0, [sp, #4]
	add	sp, #12
	bx	lr
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\344\272\244\346\215\242\345\211\215\357\274\214a \347\232\204\345\200\274\357\274\232 %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"\344\272\244\346\215\242\345\211\215\357\274\214b \347\232\204\345\200\274\357\274\232 %d\n"

L_.str.2:                               @ @.str.2
	.asciz	"\344\272\244\346\215\242\345\220\216\357\274\214a \347\232\204\345\200\274\357\274\232 %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"\344\272\244\346\215\242\345\220\216\357\274\214b \347\232\204\345\200\274\357\274\232 %d\n"

.subsections_via_symbols
