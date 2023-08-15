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
	sub	sp, sp, #36
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_0+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_0+8))
LPC0_0:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_1+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_1+8))
LPC0_1:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	str	r0, [r7, #-4]
	movw	r0, #0
	str	r0, [sp, #8]
	add	r0, sp, #12
	movw	r1, :lower16:(l___const.main.staticArray-(LPC0_2+8))
	movt	r1, :upper16:(l___const.main.staticArray-(LPC0_2+8))
LPC0_2:
	add	r1, pc, r1
	movw	r2, #20
	bl	_memcpy
	movw	r0, #5
	str	r0, [sp, #4]
	movw	r0, :lower16:(L_.str-(LPC0_3+8))
	movt	r0, :upper16:(L_.str-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp]
	add	r0, sp, #12
	add	r0, r0, r1, lsl #2
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str.1-(LPC0_4+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	movw	r0, :lower16:(L_.str.2-(LPC0_5+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_5+8))
LPC0_5:
	add	r0, pc, r0
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_6+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_6+8))
LPC0_6:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	ldr	r1, [r7, #-4]
	cmp	r0, r1
	bne	LBB0_6
@ %bb.5:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
LBB0_6:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.section	__TEXT,__const
	.p2align	2                               @ @__const.main.staticArray
l___const.main.staticArray:
	.long	1                               @ 0x1
	.long	2                               @ 0x2
	.long	3                               @ 0x3
	.long	4                               @ 0x4
	.long	5                               @ 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\351\235\231\346\200\201\346\225\260\347\273\204: "

L_.str.1:                               @ @.str.1
	.asciz	"%d "

L_.str.2:                               @ @.str.2
	.asciz	"\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
