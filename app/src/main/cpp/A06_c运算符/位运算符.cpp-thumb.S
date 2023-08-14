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
	movs	r0, #60
	str	r0, [sp, #8]
	movs	r0, #13
	str	r0, [sp, #4]
	movs	r0, #0
	str	r0, [sp]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ands	r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	orrs	r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	eors	r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	eor	r0, r0, #-1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	lsls	r0, r0, #2
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	movs	r1, #2
	movt	r1, #0
	lsrs	r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.5-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #12
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Line 1 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"Line 2 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.2:                               @ @.str.2
	.asciz	"Line 3 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"Line 4 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.4:                               @ @.str.4
	.asciz	"Line 5 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.5:                               @ @.str.5
	.asciz	"Line 6 - c \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
