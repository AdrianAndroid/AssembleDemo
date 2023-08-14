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
	movs	r0, #21  @ 21 赋值
	str	r0, [sp, #8] @ 存起来
	movs	r0, #10  @ 10 赋值
	str	r0, [sp, #4] @ 存起来
	ldr	r0, [sp, #8] @ 取出来
	ldr	r1, [sp, #4] @ 取出来
	add	r0, r1       @ +
	str	r0, [sp] 
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	subs	r0, r0, r1 @ -
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	muls	r0, r1, r0 @ x
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	bl	___divsi3 @ ___divsi3 是 GCC 编译器的内建函数，用于实现整数除法
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	bl	___modsi3
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	adds	r1, r0, #1
	str	r1, [sp, #8]
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.5-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	add.w	r1, r0, #-1
	str	r1, [sp, #8]
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.6-(LPC0_6+4))
	movt	r0, :upper16:(L_.str.6-(LPC0_6+4))
LPC0_6:
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

L_.str.6:                               @ @.str.6
	.asciz	"Line 7 - c \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
