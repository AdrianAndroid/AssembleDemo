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
	sub	sp, sp, #28
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
	movw	r0, :lower16:(l___const.main.var-(LPC0_2+8))
	movt	r0, :upper16:(l___const.main.var-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	ldr	r1, [r0]
	str	r1, [sp, #12]
	ldr	r1, [r0, #4]
	str	r1, [sp, #16]
	ldr	r0, [r0, #8]
	str	r0, [sp, #20]
	add	r0, sp, #12
	str	r0, [sp]
	movw	r0, #0
	str	r0, [sp, #4]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #3
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_3+8))
	movt	r0, :upper16:(L_.str-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	ldr	r2, [r0]
	movw	r0, :lower16:(L_.str.1-(LPC0_4+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [sp]
	add	r0, r0, #4
	str	r0, [sp]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	LBB0_1
LBB0_4:
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_5+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_5+8))
LPC0_5:
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
	.p2align	2                               @ @__const.main.var
l___const.main.var:
	.long	10                              @ 0xa
	.long	100                             @ 0x64
	.long	200                             @ 0xc8

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\345\255\230\345\202\250\345\234\260\345\235\200\357\274\232var[%d] = %p\n"

L_.str.1:                               @ @.str.1
	.asciz	"\345\255\230\345\202\250\345\200\274\357\274\232var[%d] = %d\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
