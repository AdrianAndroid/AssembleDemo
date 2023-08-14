	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z9addtwonumv                  @ -- Begin function _Z9addtwonumv
	.p2align	1
	.code	16                              @ @_Z9addtwonumv
	.thumb_func	__Z9addtwonumv
__Z9addtwonumv:
@ %bb.0:
	movw	r0, :lower16:(L_x$non_lazy_ptr-(LPC0_0+4))
	movt	r0, :upper16:(L_x$non_lazy_ptr-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	movw	r1, :lower16:(L_y$non_lazy_ptr-(LPC0_1+4))
	movt	r1, :upper16:(L_y$non_lazy_ptr-(LPC0_1+4))
LPC0_1:
	add	r1, pc
	ldr	r1, [r1]
	ldr	r1, [r1]
	add	r0, r1
	bx	lr
                                        @ -- End function
	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L_x$non_lazy_ptr:
	.indirect_symbol	_x
	.long	0
L_y$non_lazy_ptr:
	.indirect_symbol	_y
	.long	0

.subsections_via_symbols
