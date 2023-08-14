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
	movs	r0, #21
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	add	r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	subs	r0, r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	muls	r0, r1, r0
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	bl	___divsi3
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
	movs	r0, #200
	str	r0, [sp]
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	bl	___modsi3
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.5-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	lsls	r0, r0, #2
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.6-(LPC0_6+4))
	movt	r0, :upper16:(L_.str.6-(LPC0_6+4))
LPC0_6:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	movs	r1, #2
	movt	r1, #0
	asrs	r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.7-(LPC0_7+4))
	movt	r0, :upper16:(L_.str.7-(LPC0_7+4))
LPC0_7:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	and	r0, r0, #2
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.8-(LPC0_8+4))
	movt	r0, :upper16:(L_.str.8-(LPC0_8+4))
LPC0_8:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	eor	r0, r0, #2
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.9-(LPC0_9+4))
	movt	r0, :upper16:(L_.str.9-(LPC0_9+4))
LPC0_9:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	orr	r0, r0, #2
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.10-(LPC0_10+4))
	movt	r0, :upper16:(L_.str.10-(LPC0_10+4))
LPC0_10:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Line 1 - =  \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"Line 2 - += \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.2:                               @ @.str.2
	.asciz	"Line 3 - -= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"Line 4 - *= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.4:                               @ @.str.4
	.asciz	"Line 5 - /= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.5:                               @ @.str.5
	.asciz	"Line 6 - %%= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.6:                               @ @.str.6
	.asciz	"Line 7 - <<= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.7:                               @ @.str.7
	.asciz	"Line 8 - >>= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.8:                               @ @.str.8
	.asciz	"Line 9 - &= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.9:                               @ @.str.9
	.asciz	"Line 10 - ^= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

L_.str.10:                              @ @.str.10
	.asciz	"Line 11 - |= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

.subsections_via_symbols
