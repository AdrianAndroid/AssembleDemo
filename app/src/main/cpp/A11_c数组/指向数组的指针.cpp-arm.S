	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	3
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #64
	bfc	sp, #0, #3
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
	str	r0, [sp, #60]
	movw	r0, #0
	str	r0, [sp, #12]
	add	r0, sp, #16
	movw	r1, #0
	movw	r2, #40
	and	r1, r1, #255
	bl	_memset
	vldr	d16, LCPI0_2            @ 1000
	vstr	d16, [sp, #16]
	vmov.f64	d16, #2.000000e+00  @ 2.0
	vstr	d16, [sp, #24]
	vldr	d16, LCPI0_1            @ 3.4
	vstr	d16, [sp, #32]
	vmov.f64	d16, #1.700000e+01  @ 17.0
	vstr	d16, [sp, #40]
	vldr	d16, LCPI0_0            @ 50 
	vstr	d16, [sp, #48]
	add	r0, sp, #16
	str	r0, [sp, #8]
	movw	r0, :lower16:(L_.str-(LPC0_2+8))
	movt	r0, :upper16:(L_.str-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	str	r0, [sp, #4]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #5
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r2, [sp, #4]
	mov	r1, r2
	ldr	r0, [sp, #8]
	add	r0, r0, r2, lsl #3
	vldr	d16, [r0]
	movw	r0, :lower16:(L_.str.1-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	vmov	r2, r3, d16
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	LBB0_1
LBB0_4:
	movw	r0, :lower16:(L_.str.2-(LPC0_4+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	str	r0, [sp, #4]
LBB0_5:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #5
	bge	LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r2, [sp, #4]
	mov	r1, r2
	add	r0, sp, #16
	add	r0, r0, r2, lsl #3   @ 数组下一个索引
	vldr	d16, [r0]
	movw	r0, :lower16:(L_.str.3-(LPC0_5+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_5+8))
LPC0_5:
	add	r0, pc, r0
	vmov	r2, r3, d16
	bl	_printf
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	LBB0_5
LBB0_8:
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_6+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_6+8))
LPC0_6:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #60]
	cmp	r0, r1
	bne	LBB0_10
@ %bb.9:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
LBB0_10:
	bl	___stack_chk_fail
	trap
	.p2align	3
@ %bb.11:
	.data_region
LCPI0_0:
	.long	0                               @ double 50
	.long	1078525952
LCPI0_1:
	.long	858993459                       @ double 3.3999999999999999
	.long	1074475827
LCPI0_2:
	.long	0                               @ double 1000
	.long	1083129856
	.end_data_region
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\344\275\277\347\224\250\346\214\207\351\222\210\347\232\204\346\225\260\347\273\204\345\200\274\n"

L_.str.1:                               @ @.str.1
	.asciz	"*(p + %d) : %f\n"

L_.str.2:                               @ @.str.2
	.asciz	"\344\275\277\347\224\250 balance \344\275\234\344\270\272\345\234\260\345\235\200\347\232\204\346\225\260\347\273\204\345\200\274\n"

L_.str.3:                               @ @.str.3
	.asciz	"*(balance + %d) : %f\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
