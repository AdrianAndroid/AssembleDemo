	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #28
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
	str	r0, [sp, #24]
	movs	r0, #0
	str	r0, [sp]
	movs	r0, #10
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str-(LPC0_2+4))
	movt	r0, :upper16:(L_.str-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	vldr	s0, LCPI0_0
	vstr	s0, [sp, #4]
	vldr	s0, [sp, #4]
	vcvt.f64.f32	d16, s0
	movw	r0, :lower16:(L_.str.1-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	vmov	r1, r2, d16
	bl	_printf
	add	r0, sp, #4
	movw	r1, :lower16:(L_.str.2-(LPC0_4+4))
	movt	r1, :upper16:(L_.str.2-(LPC0_4+4))
LPC0_4:
	add	r1, pc
	bl	_strcpy
	add	r1, sp, #4
	movw	r0, :lower16:(L_.str.3-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_6+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_6+4))
LPC0_6:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #24]
	cmp	r0, r1
	bne	LBB0_2
@ %bb.1:
	movs	r0, #0
	add	sp, #28
	pop	{r7, pc}
LBB0_2:
	bl	___stack_chk_fail
	trap
	.p2align	2
@ %bb.3:
	.data_region
LCPI0_0:
	.long	0x435c8000                      @ float 220.5
	.end_data_region
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"data.i : %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"data.f : %f\n"

L_.str.2:                               @ @.str.2
	.asciz	"C Programming"

L_.str.3:                               @ @.str.3
	.asciz	"data.str : %s\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
