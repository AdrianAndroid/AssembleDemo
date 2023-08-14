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
	movs	r0, #21     @ int a = 21;
	str	r0, [sp, #8]
	movs	r0, #10     @ int b = 10;
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1         @ if (a == b) {
	bne	LBB0_2
@ %bb.1:
	movw	r0, :lower16:(L_.str-(LPC0_0+4))  @ printf("Line 1 - a 等于 b\n");
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	b	LBB0_3
LBB0_2:
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4)) @ printf("Line 1 - a 不等于 b\n");
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
LBB0_3:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bge	LBB0_5
@ %bb.4:
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4)) @ printf("Line 2 - a 小于 b\n");
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	b	LBB0_6
LBB0_5:
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4)) @ printf("Line 2 - a 不小于 b\n");
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
LBB0_6:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	ble	LBB0_8
@ %bb.7:
	movw	r0, :lower16:(L_.str.4-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
	b	LBB0_9
LBB0_8:
	movw	r0, :lower16:(L_.str.5-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	bl	_printf
LBB0_9:
	movs	r0, #5    @ a = 5;
	str	r0, [sp, #8]
	movs	r0, #20   @ b = 20;
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bgt	LBB0_11       @ 表示"如果大于则跳转"
@ %bb.10:
	movw	r0, :lower16:(L_.str.6-(LPC0_6+4)) @ printf("Line 4 - a 小于或等于 b\n");
	movt	r0, :upper16:(L_.str.6-(LPC0_6+4))
LPC0_6:
	add	r0, pc
	bl	_printf
LBB0_11:
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	blt	LBB0_13
@ %bb.12:
	movw	r0, :lower16:(L_.str.7-(LPC0_7+4)) @ printf("Line 5 - b 大于或等于 a\n");
	movt	r0, :upper16:(L_.str.7-(LPC0_7+4))
LPC0_7:
	add	r0, pc
	bl	_printf
LBB0_13:
	ldr	r0, [sp, #12]
	add	sp, #16
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Line 1 - a \347\255\211\344\272\216 b\n"

L_.str.1:                               @ @.str.1
	.asciz	"Line 1 - a \344\270\215\347\255\211\344\272\216 b\n"

L_.str.2:                               @ @.str.2
	.asciz	"Line 2 - a \345\260\217\344\272\216 b\n"

L_.str.3:                               @ @.str.3
	.asciz	"Line 2 - a \344\270\215\345\260\217\344\272\216 b\n"

L_.str.4:                               @ @.str.4
	.asciz	"Line 3 - a \345\244\247\344\272\216 b\n"

L_.str.5:                               @ @.str.5
	.asciz	"Line 3 - a \344\270\215\345\244\247\344\272\216 b\n"

L_.str.6:                               @ @.str.6
	.asciz	"Line 4 - a \345\260\217\344\272\216\346\210\226\347\255\211\344\272\216 b\n"

L_.str.7:                               @ @.str.7
	.asciz	"Line 5 - b \345\244\247\344\272\216\346\210\226\347\255\211\344\272\216 a\n"

.subsections_via_symbols
