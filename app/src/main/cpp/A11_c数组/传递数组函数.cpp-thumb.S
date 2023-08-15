	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	1
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r4, r7, lr}
	add	r7, sp, #4
	sub	sp, #36
	mov	r4, sp
	bfc	r4, #0, #3
	mov	sp, r4
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
	str	r0, [sp, #32]
	movs	r0, #0
	str	r0, [sp, #8]
	add	r0, sp, #12
	movw	r1, :lower16:(l___const.main.balance-(LPC0_2+4))
	movt	r1, :upper16:(l___const.main.balance-(LPC0_2+4))
LPC0_2:
	add	r1, pc
	movs	r2, #20
	bl	_memcpy
	add	r0, sp, #12
	movs	r1, #5
	bl	__Z10getAveragePii
	vmov	d16, r0, r1
	vstr	d16, [sp]
	vldr	d16, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_3+4))
	movt	r0, :upper16:(L_.str-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	vmov	r1, r2, d16
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_4+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #32]
	cmp	r0, r1
	bne	LBB0_2
@ %bb.1:
	movs	r0, #0
	subs	r4, r7, #4
	mov	sp, r4
	pop	{r4, r7, pc}
LBB0_2:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.globl	__Z10getAveragePii              @ -- Begin function _Z10getAveragePii
	.p2align	3
	.code	16                              @ @_Z10getAveragePii
	.thumb_func	__Z10getAveragePii
__Z10getAveragePii:
@ %bb.0:
	push	{r4, r7, lr}
	add	r7, sp, #4
	sub	sp, #28
	mov	r4, sp
	bfc	r4, #0, #3
	mov	sp, r4
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	vldr	d16, LCPI1_0
	vstr	d16, [sp]
	movs	r0, #0
	str	r0, [sp, #16]
LBB1_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	cmp	r0, r1
	bge	LBB1_4
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #16]
	lsls	r1, r1, #2
	add	r0, r1
	ldr	r0, [r0]
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	vldr	d16, [sp]
	vadd.f64	d16, d16, d17
	vstr	d16, [sp]
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #16]
	adds	r0, #1
	str	r0, [sp, #16]
	b	LBB1_1
LBB1_4:
	vldr	d16, [sp]
	vldr	s0, [sp, #20]
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d16, d17
	vstr	d16, [sp, #8]
	vldr	d16, [sp, #8]
	vmov	r0, r1, d16
	subs	r4, r7, #4
	mov	sp, r4
	pop	{r4, r7, pc}
	.p2align	3
@ %bb.5:
	.data_region
LCPI1_0:
	.long	0                               @ double 0
	.long	0
	.end_data_region
                                        @ -- End function
	.section	__TEXT,__const
	.p2align	2                               @ @__const.main.balance
l___const.main.balance:
	.long	1000                            @ 0x3e8
	.long	2                               @ 0x2
	.long	3                               @ 0x3
	.long	17                              @ 0x11
	.long	50                              @ 0x32

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\345\271\263\345\235\207\345\200\274\346\230\257\357\274\232 %f "

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
