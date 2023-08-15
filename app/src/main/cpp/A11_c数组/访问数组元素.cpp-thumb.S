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
	sub	sp, #56
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_0+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_1+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	str	r0, [sp, #52]
	movs	r0, #0
	str	r0, [sp, #8]
	movs	r0, #0
	str	r0, [sp, #4]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #10
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	adds	r0, #100
	ldr	r2, [sp, #4]
	add	r1, sp, #12
	lsls	r2, r2, #2
	add	r1, r2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	adds	r0, #1
	str	r0, [sp, #4]
	b	LBB0_1
LBB0_4:
	movs	r0, #0
	str	r0, [sp]
LBB0_5:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #10
	bge	LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r1, [sp]
	ldr	r2, [sp]
	add	r0, sp, #12
	lsls	r2, r2, #2
	add	r0, r2
	ldr	r2, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_2+4))
	movt	r0, :upper16:(L_.str-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB0_5
LBB0_8:
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_3+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #52]
	cmp	r0, r1
	bne	LBB0_10
@ %bb.9:
	movs	r0, #0
	add	sp, #56
	pop	{r7, pc}
LBB0_10:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Element[%d] = %d\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
