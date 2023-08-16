	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z14populate_arrayPimPFivE     @ -- Begin function _Z14populate_arrayPimPFivE
	.p2align	1
	.code	16                              @ @_Z14populate_arrayPimPFivE
	.thumb_func	__Z14populate_arrayPimPFivE
__Z14populate_arrayPimPFivE:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	movs	r0, #0
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bhs	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	blx	r0
	ldr	r1, [sp, #12]
	ldr	r2, [sp]
	lsls	r2, r2, #2
	add	r1, r2
	str	r0, [r1]
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	add	sp, #16
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z18getNextRandomValuev        @ -- Begin function _Z18getNextRandomValuev
	.p2align	1
	.code	16                              @ @_Z18getNextRandomValuev
	.thumb_func	__Z18getNextRandomValuev
__Z18getNextRandomValuev:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	bl	_rand
	pop	{r7, pc}
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	1
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #52
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC2_0+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC2_0+4))
LPC2_0:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC2_1+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC2_1+4))
LPC2_1:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	str	r0, [sp, #48]
	movs	r0, #0
	str	r0, [sp, #4]
	add	r0, sp, #8
	movs	r1, #10
	movw	r2, :lower16:(__Z18getNextRandomValuev-(LPC2_2+4))
	movt	r2, :upper16:(__Z18getNextRandomValuev-(LPC2_2+4))
LPC2_2:
	add	r2, pc
	bl	__Z14populate_arrayPimPFivE
	movs	r0, #0
	str	r0, [sp]
LBB2_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #10
	bge	LBB2_4
@ %bb.2:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r1, [sp]
	add	r0, sp, #8
	lsls	r1, r1, #2
	add	r0, r1
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str-(LPC2_3+4))
	movt	r0, :upper16:(L_.str-(LPC2_3+4))
LPC2_3:
	add	r0, pc
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB2_1
LBB2_4:
	movw	r0, :lower16:(L_.str.1-(LPC2_4+4))
	movt	r0, :upper16:(L_.str.1-(LPC2_4+4))
LPC2_4:
	add	r0, pc
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC2_5+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC2_5+4))
LPC2_5:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #48]
	cmp	r0, r1
	bne	LBB2_6
@ %bb.5:
	movs	r0, #0
	add	sp, #52
	pop	{r7, pc}
LBB2_6:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"%d "

L_.str.1:                               @ @.str.1
	.asciz	"\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
