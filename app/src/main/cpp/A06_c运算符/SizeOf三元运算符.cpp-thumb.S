	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	1
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r4, r7, lr}
	add	r7, sp, #4
	sub	sp, #28
	mov	r4, sp
	bfc	r4, #0, #3
	mov	sp, r4
	movs	r0, #4
	str	r0, [sp, #24]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	movs	r1, #4
	bl	_printf
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	movs	r1, #2
	bl	_printf
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	movs	r1, #8
	bl	_printf
	add	r0, sp, #24
	str	r0, [sp, #4]
	ldr	r1, [sp, #24]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
	movs	r0, #10    @ a = 10;
	str	r0, [sp, #24]
	ldr	r0, [sp, #24]
	cmp	r0, #1
	movw	r1, #0
	it	eq
	moveq	r1, #1
	movs	r0, #20
	tst.w	r1, #1
	it	eq
	moveq	r0, #30
	strh.w	r0, [sp, #22]
	ldrsh.w	r1, [sp, #22]
	movw	r0, :lower16:(L_.str.5-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #24]
	cmp	r0, #10
	movw	r1, #0
	it	eq
	moveq	r1, #1
	movs	r0, #20
	tst.w	r1, #1
	it	eq
	moveq	r0, #30
	strh.w	r0, [sp, #22]
	ldrsh.w	r1, [sp, #22]
	movw	r0, :lower16:(L_.str.5-(LPC0_6+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_6+4))
LPC0_6:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	subs	r4, r7, #4
	mov	sp, r4
	pop	{r4, r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Line 1 - \345\217\230\351\207\217 a \347\232\204\345\244\247\345\260\217 = %lu\n"

L_.str.1:                               @ @.str.1
	.asciz	"Line 2 - \345\217\230\351\207\217 b \347\232\204\345\244\247\345\260\217 = %lu\n"

L_.str.2:                               @ @.str.2
	.asciz	"Line 3 - \345\217\230\351\207\217 c \347\232\204\345\244\247\345\260\217 = %lu\n"

L_.str.3:                               @ @.str.3
	.asciz	"a \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.4:                               @ @.str.4
	.asciz	"*ptr \346\230\257 %d\n"

L_.str.5:                               @ @.str.5
	.asciz	"b \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
