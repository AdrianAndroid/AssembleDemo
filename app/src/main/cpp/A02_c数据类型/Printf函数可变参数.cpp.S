	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z12print_valuesiz             @ -- Begin function _Z12print_valuesiz
	.p2align	1
	.code	16                              @ @_Z12print_valuesiz
	.thumb_func	__Z12print_valuesiz
__Z12print_valuesiz:
@ %bb.0:
	sub	sp, #12
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #12
	str	r3, [r7, #16]
	str	r2, [r7, #12]
	str	r1, [r7, #8]
	str	r0, [sp, #8]
	add	r1, sp, #4
	add.w	r0, r7, #8
	str	r0, [r1]
	movs	r0, #0
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	adds	r1, r0, #4
	str	r1, [sp, #4]
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	add	r0, sp, #4
	add	sp, #12
	pop.w	{r7, lr}
	add	sp, #12
	bx	lr
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	1
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #4
	movs	r0, #0
	str	r0, [sp]
	movs	r3, #3
	movs	r1, #1
	movs	r2, #2
	mov	r0, r3
	bl	__Z12print_valuesiz
	movs	r0, #0
	add	sp, #4
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"%d "

.subsections_via_symbols
