	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	3
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r4, r7, lr}
	add	r7, sp, #4
	sub	sp, #60
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
	str	r0, [sp, #56]
	movs	r0, #0
	str	r0, [sp, #12]
	add	r0, sp, #16
	movs	r1, #0
	movs	r2, #40
	and	r1, r1, #255
	bl	_memset
	vldr	d16, LCPI0_2
	vstr	d16, [sp, #16]
	vmov.f64	d16, #2.000000e+00
	vstr	d16, [sp, #24]
	vldr	d16, LCPI0_1
	vstr	d16, [sp, #32]
	vmov.f64	d16, #1.700000e+01
	vstr	d16, [sp, #40]
	vldr	d16, LCPI0_0
	vstr	d16, [sp, #48]
	add	r0, sp, #16
	str	r0, [sp, #8]
	movw	r0, :lower16:(L_.str-(LPC0_2+4))
	movt	r0, :upper16:(L_.str-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	str	r0, [sp, #4]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #5
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r2, [sp, #4]
	lsls	r2, r2, #3
	add	r0, r2
	vldr	d16, [r0]
	movw	r0, :lower16:(L_.str.1-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	vmov	r2, r3, d16
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	adds	r0, #1
	str	r0, [sp, #4]
	b	LBB0_1
LBB0_4:
	movw	r0, :lower16:(L_.str.2-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	str	r0, [sp, #4]
LBB0_5:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #5
	bge	LBB0_8
@ %bb.6:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r1, [sp, #4]
	add	r0, sp, #16
	ldr	r2, [sp, #4]
	lsls	r2, r2, #3
	add	r0, r2
	vldr	d16, [r0]
	movw	r0, :lower16:(L_.str.3-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	vmov	r2, r3, d16
	bl	_printf
@ %bb.7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #4]
	adds	r0, #1
	str	r0, [sp, #4]
	b	LBB0_5
LBB0_8:
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_6+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_6+4))
LPC0_6:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #56]
	cmp	r0, r1
	bne	LBB0_10
@ %bb.9:
	movs	r0, #0
	subs	r4, r7, #4
	mov	sp, r4
	pop	{r4, r7, pc}
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
