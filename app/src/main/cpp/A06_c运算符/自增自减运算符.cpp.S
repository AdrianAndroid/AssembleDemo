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
	movs	r0, #10    @ int a = 10;
	str	r0, [sp]
	ldr	r0, [sp]
	adds	r1, r0, #1 @ 自增操作
	str	r1, [sp]
	str	r0, [sp, #4]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	movs	r0, #10     @ a = 10;
	str	r0, [sp]
	ldr	r0, [sp]
	add.w	r1, r0, #-1 @ c = a--;
	str	r1, [sp]
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
	movw	r0, :lower16:(L_.str.5-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	bl	_printf
	movs	r0, #10  @ a = 10;
	str	r0, [sp]
	ldr	r0, [sp]
	adds	r0, #1   @ ++a;
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str.6-(LPC0_6+4))
	movt	r0, :upper16:(L_.str.6-(LPC0_6+4))
LPC0_6:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.7-(LPC0_7+4))
	movt	r0, :upper16:(L_.str.7-(LPC0_7+4))
LPC0_7:
	add	r0, pc
	bl	_printf
	movs	r0, #10
	str	r0, [sp]
	ldr	r0, [sp]
	add.w	r0, r0, #-1
	str	r0, [sp]
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str.8-(LPC0_8+4))
	movt	r0, :upper16:(L_.str.8-(LPC0_8+4))
LPC0_8:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.9-(LPC0_9+4))
	movt	r0, :upper16:(L_.str.9-(LPC0_9+4))
LPC0_9:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\345\205\210\350\265\213\345\200\274\345\220\216\350\277\220\347\256\227\357\274\232\n"

L_.str.1:                               @ @.str.1
	.asciz	"Line 1 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.2:                               @ @.str.2
	.asciz	"Line 2 - a \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"Line 3 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.4:                               @ @.str.4
	.asciz	"Line 4 - a \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.5:                               @ @.str.5
	.asciz	"\345\205\210\350\277\220\347\256\227\345\220\216\350\265\213\345\200\274\357\274\232\n"

L_.str.6:                               @ @.str.6
	.asciz	"Line 5 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.7:                               @ @.str.7
	.asciz	"Line 6 - a \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.8:                               @ @.str.8
	.asciz	"Line 7 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.9:                               @ @.str.9
	.asciz	"Line 8 - a \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
