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
	movw	r0, #100    @ int a = 100;
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #10
	bne	LBB0_2
@ %bb.1:
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	b	LBB0_9
LBB0_2:
	ldr	r0, [sp]
	cmp	r0, #20
	bne	LBB0_4
@ %bb.3:
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
	b	LBB0_8
LBB0_4:
	ldr	r0, [sp]
	cmp	r0, #30
	bne	LBB0_6
@ %bb.5:
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	b	LBB0_7
LBB0_6:
	movw	r0, :lower16:(L_.str.3-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
LBB0_7:
	b	LBB0_8
LBB0_8:
	b	LBB0_9
LBB0_9:
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+8))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"a \347\232\204\345\200\274\346\230\257 10\n"

L_.str.1:                               @ @.str.1
	.asciz	"a \347\232\204\345\200\274\346\230\257 20\n"

L_.str.2:                               @ @.str.2
	.asciz	"a \347\232\204\345\200\274\346\230\257 30\n"

L_.str.3:                               @ @.str.3
	.asciz	"\346\262\241\346\234\211\345\214\271\351\205\215\347\232\204\345\200\274\n"

L_.str.4:                               @ @.str.4
	.asciz	"a \347\232\204\345\207\206\347\241\256\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
