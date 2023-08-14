	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z12write_externv              @ -- Begin function _Z12write_externv
	.p2align	1
	.code	16                              @ @_Z12write_externv
	.thumb_func	__Z12write_externv
__Z12write_externv:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	movw	r0, :lower16:(L_count$non_lazy_ptr-(LPC0_0+4))
	movt	r0, :upper16:(L_count$non_lazy_ptr-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_1+4))
	movt	r0, :upper16:(L_.str-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"count is %d\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L_count$non_lazy_ptr:
	.indirect_symbol	_count
	.long	0

.subsections_via_symbols
