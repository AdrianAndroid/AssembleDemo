	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z10printArrayPii              @ -- Begin function _Z10printArrayPii
	.p2align	2
	.code	32                              @ @_Z10printArrayPii
__Z10printArrayPii:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #12
	str	r0, [r7, #-4]
	str	r1, [sp, #4]
	movw	r0, #0
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r7, #-4]
	ldr	r1, [sp]
	add	r0, r0, r1, lsl #2
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #28
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC1_0+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC1_0+8))
LPC1_0:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC1_1+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC1_1+8))
LPC1_1:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	str	r0, [r7, #-4]
	movw	r0, #0
	str	r0, [sp]
	add	r0, sp, #4
	movw	r1, :lower16:(l___const.main.myArray-(LPC1_2+8))
	movt	r1, :upper16:(l___const.main.myArray-(LPC1_2+8))
LPC1_2:
	add	r1, pc, r1
	movw	r2, #20
	bl	_memcpy
	add	r0, sp, #4
	movw	r1, #5
	bl	__Z10printArrayPii
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC1_3+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC1_3+8))
LPC1_3:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	ldr	r1, [r7, #-4]
	cmp	r0, r1
	bne	LBB1_2
@ %bb.1:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
LBB1_2:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"%d "

	.section	__TEXT,__const
	.p2align	2                               @ @__const.main.myArray
l___const.main.myArray:
	.long	10                              @ 0xa
	.long	20                              @ 0x14
	.long	30                              @ 0x1e
	.long	40                              @ 0x28
	.long	50                              @ 0x32

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
