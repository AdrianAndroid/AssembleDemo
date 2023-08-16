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
	sub	sp, #416
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
	str	r0, [sp, #412]
	movs	r0, #0
	str	r0, [sp]
	add	r0, sp, #208
	movw	r1, :lower16:(L_.str-(LPC0_2+4))
	movt	r1, :upper16:(L_.str-(LPC0_2+4))
LPC0_2:
	add	r1, pc
	bl	_strcpy
	add	r0, sp, #208
	adds	r0, #50
	movw	r1, :lower16:(L_.str.1-(LPC0_3+4))
	movt	r1, :upper16:(L_.str.1-(LPC0_3+4))
LPC0_3:
	add	r1, pc
	bl	_strcpy
	add	r0, sp, #208
	adds	r0, #100
	movw	r1, :lower16:(L_.str.2-(LPC0_4+4))
	movt	r1, :upper16:(L_.str.2-(LPC0_4+4))
LPC0_4:
	add	r1, pc
	bl	_strcpy
	movw	r0, #7343
	movt	r0, #99
	str	r0, [sp, #408]
	add	r0, sp, #4
	movw	r1, :lower16:(L_.str.3-(LPC0_5+4))
	movt	r1, :upper16:(L_.str.3-(LPC0_5+4))
LPC0_5:
	add	r1, pc
	bl	_strcpy
	add	r0, sp, #4
	adds	r0, #50
	movw	r1, :lower16:(L_.str.4-(LPC0_6+4))
	movt	r1, :upper16:(L_.str.4-(LPC0_6+4))
LPC0_6:
	add	r1, pc
	bl	_strcpy
	add	r0, sp, #4
	adds	r0, #100
	movw	r1, :lower16:(L_.str.5-(LPC0_7+4))
	movt	r1, :upper16:(L_.str.5-(LPC0_7+4))
LPC0_7:
	add	r1, pc
	bl	_strcpy
	movw	r0, #7636
	movt	r0, #99
	str	r0, [sp, #204]
	add	r1, sp, #208
	movw	r0, :lower16:(L_.str.6-(LPC0_8+4))
	movt	r0, :upper16:(L_.str.6-(LPC0_8+4))
LPC0_8:
	add	r0, pc
	bl	_printf
	add	r0, sp, #208
	add.w	r1, r0, #50
	movw	r0, :lower16:(L_.str.7-(LPC0_9+4))
	movt	r0, :upper16:(L_.str.7-(LPC0_9+4))
LPC0_9:
	add	r0, pc
	bl	_printf
	add	r0, sp, #208
	add.w	r1, r0, #100
	movw	r0, :lower16:(L_.str.8-(LPC0_10+4))
	movt	r0, :upper16:(L_.str.8-(LPC0_10+4))
LPC0_10:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp, #408]
	movw	r0, :lower16:(L_.str.9-(LPC0_11+4))
	movt	r0, :upper16:(L_.str.9-(LPC0_11+4))
LPC0_11:
	add	r0, pc
	bl	_printf
	add	r1, sp, #4
	movw	r0, :lower16:(L_.str.10-(LPC0_12+4))
	movt	r0, :upper16:(L_.str.10-(LPC0_12+4))
LPC0_12:
	add	r0, pc
	bl	_printf
	add	r0, sp, #4
	add.w	r1, r0, #50
	movw	r0, :lower16:(L_.str.11-(LPC0_13+4))
	movt	r0, :upper16:(L_.str.11-(LPC0_13+4))
LPC0_13:
	add	r0, pc
	bl	_printf
	add	r0, sp, #4
	add.w	r1, r0, #100
	movw	r0, :lower16:(L_.str.12-(LPC0_14+4))
	movt	r0, :upper16:(L_.str.12-(LPC0_14+4))
LPC0_14:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp, #204]
	movw	r0, :lower16:(L_.str.13-(LPC0_15+4))
	movt	r0, :upper16:(L_.str.13-(LPC0_15+4))
LPC0_15:
	add	r0, pc
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_16+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_16+4))
LPC0_16:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #412]
	cmp	r0, r1
	bne	LBB0_2
@ %bb.1:
	movs	r0, #0
	add	sp, #416
	pop	{r7, pc}
LBB0_2:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"C Programming"

L_.str.1:                               @ @.str.1
	.asciz	"Nuha Ali"

L_.str.2:                               @ @.str.2
	.asciz	"C Programming Tutorial"

L_.str.3:                               @ @.str.3
	.asciz	"Telecom Billing"

L_.str.4:                               @ @.str.4
	.asciz	"Zara Ali"

L_.str.5:                               @ @.str.5
	.asciz	"Telecom Billing Tutorial"

L_.str.6:                               @ @.str.6
	.asciz	"Book 1 title : %s\n"

L_.str.7:                               @ @.str.7
	.asciz	"Book 1 author : %s\n"

L_.str.8:                               @ @.str.8
	.asciz	"Book 1 subject : %s\n"

L_.str.9:                               @ @.str.9
	.asciz	"Book 1 book_id : %d\n"

L_.str.10:                              @ @.str.10
	.asciz	"Book 2 title : %s\n"

L_.str.11:                              @ @.str.11
	.asciz	"Book 2 author : %s\n"

L_.str.12:                              @ @.str.12
	.asciz	"Book 2 subject : %s\n"

L_.str.13:                              @ @.str.13
	.asciz	"Book 2 book_id : %d\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
