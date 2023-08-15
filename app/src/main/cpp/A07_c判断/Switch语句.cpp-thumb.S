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
	ldr	r0, [sp, #4]
	cmp	r0, #100
	bne	LBB0_4
	b	LBB0_1
LBB0_1:
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	cmp	r0, #200
	bne	LBB0_3
	b	LBB0_2
LBB0_2:
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
LBB0_3:
	b	LBB0_4
LBB0_4:
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\350\277\231\346\230\257\345\244\226\351\203\250 switch \347\232\204\344\270\200\351\203\250\345\210\206\n"

L_.str.1:                               @ @.str.1
	.asciz	"\350\277\231\346\230\257\345\206\205\351\203\250 switch \347\232\204\344\270\200\351\203\250\345\210\206\n"

L_.str.2:                               @ @.str.2
	.asciz	"a \347\232\204\345\207\206\347\241\256\345\200\274\346\230\257 %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"b \347\232\204\345\207\206\347\241\256\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
