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
	movs	r0, #10
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #15
	bne	LBB0_3
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB0_4
LBB0_3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
LBB0_4:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	cmp	r0, #20
	blt	LBB0_1
@ %bb.5:
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"a \347\232\204\345\200\274\357\274\232 %d\n"

.subsections_via_symbols
