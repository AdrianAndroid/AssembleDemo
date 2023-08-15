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
	add	r0, sp, #12
	movw	r1, :lower16:(l___const.main.a-(LPC0_2+4))
	movt	r1, :upper16:(l___const.main.a-(LPC0_2+4))
LPC0_2:
	add	r1, pc
	movs	r2, #40
	bl	_memcpy
	movs	r0, #0
	str	r0, [sp, #4]
LBB0_1:                                 @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	ldr	r0, [sp, #4]
	cmp	r0, #5
	bge	LBB0_8
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	movs	r0, #0
	str	r0, [sp]
LBB0_3:                                 @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp]
	cmp	r0, #2
	bge	LBB0_6
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	add	r0, sp, #12
	lsls	r3, r3, #3
	add	r0, r3
	ldr	r3, [sp]
	lsls	r3, r3, #2
	add	r0, r3
	ldr	r3, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_3+4))
	movt	r0, :upper16:(L_.str-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
@ %bb.5:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB0_3
LBB0_6:                                 @   in Loop: Header=BB0_1 Depth=1
	b	LBB0_7
LBB0_7:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	adds	r0, #1
	str	r0, [sp, #4]
	b	LBB0_1
LBB0_8:
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_4+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_4+4))
LPC0_4:
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
	.section	__TEXT,__const
	.p2align	2                               @ @__const.main.a
l___const.main.a:
	.space	8
	.long	1                               @ 0x1
	.long	2                               @ 0x2
	.long	2                               @ 0x2
	.long	4                               @ 0x4
	.long	3                               @ 0x3
	.long	6                               @ 0x6
	.long	4                               @ 0x4
	.long	8                               @ 0x8

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"a[%d][%d] = %d\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
