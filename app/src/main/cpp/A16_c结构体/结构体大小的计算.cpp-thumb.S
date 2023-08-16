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
	sub	sp, #36
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
	str	r0, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_2+4))
	movt	r0, :upper16:(L_.str-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	movs	r1, #28
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_3+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #32]
	cmp	r0, r1
	bne	LBB0_2
@ %bb.1:
	movs	r0, #0
	add	sp, #36
	pop	{r7, pc}
LBB0_2:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\347\273\223\346\236\204\344\275\223 Person \345\244\247\345\260\217\344\270\272: %zu \345\255\227\350\212\202\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
