	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r4, r7, lr}
	add	r7, sp, #4
	sub	sp, sp, #28
	sub	sp, sp, #1024
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
	str	r0, [r7, #-8]
	movw	r0, #0
	str	r0, [sp, #228]
	sub	r0, r7, #212
	movw	r1, :lower16:(L_.str-(LPC0_2+8))
	movt	r1, :upper16:(L_.str-(LPC0_2+8))
LPC0_2:
	add	r1, pc, r1
	bl	_strcpy
	sub	r0, r7, #212
	add	r0, r0, #50
	movw	r1, :lower16:(L_.str.1-(LPC0_3+8))
	movt	r1, :upper16:(L_.str.1-(LPC0_3+8))
LPC0_3:
	add	r1, pc, r1
	bl	_strcpy
	sub	r0, r7, #212
	add	r0, r0, #100
	movw	r1, :lower16:(L_.str.2-(LPC0_4+8))
	movt	r1, :upper16:(L_.str.2-(LPC0_4+8))
LPC0_4:
	add	r1, pc, r1
	bl	_strcpy
	ldr	r0, LCPI0_1
	str	r0, [r7, #-12]
	sub	r0, r7, #416
	movw	r1, :lower16:(L_.str.3-(LPC0_5+8))
	movt	r1, :upper16:(L_.str.3-(LPC0_5+8))
LPC0_5:
	add	r1, pc, r1
	bl	_strcpy
	sub	r0, r7, #416
	add	r0, r0, #50
	movw	r1, :lower16:(L_.str.4-(LPC0_6+8))
	movt	r1, :upper16:(L_.str.4-(LPC0_6+8))
LPC0_6:
	add	r1, pc, r1
	bl	_strcpy
	sub	r0, r7, #416
	add	r0, r0, #100
	movw	r1, :lower16:(L_.str.5-(LPC0_7+8))
	movt	r1, :upper16:(L_.str.5-(LPC0_7+8))
LPC0_7:
	add	r1, pc, r1
	bl	_strcpy
	ldr	r0, LCPI0_0
	str	r0, [r7, #-216]
	add	r0, sp, #436
	sub	r1, r7, #212
	movw	r2, #204
	bl	_memcpy
	add	r0, sp, #436
	add	r1, r0, #16
	mov	r0, sp
	movw	r2, #188
	str	r2, [sp, #216]                  @ 4-byte Spill
	str	r1, [sp, #220]                  @ 4-byte Spill
	str	r0, [sp, #224]                  @ 4-byte Spill
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #224]                  @ 4-byte Reload
	ldr	r1, [sp, #220]                  @ 4-byte Reload
	ldr	r2, [sp, #216]                  @ 4-byte Reload
	ldr	r3, [r1], #4
	str	r1, [sp, #208]                  @ 4-byte Spill
	str	r3, [r0], #4
	str	r0, [sp, #212]                  @ 4-byte Spill
	subs	r2, r2, #4
	str	r2, [sp, #216]                  @ 4-byte Spill
	str	r1, [sp, #220]                  @ 4-byte Spill
	str	r0, [sp, #224]                  @ 4-byte Spill
	bne	LBB0_1
@ %bb.2:
	ldr	r0, [sp, #436]
	ldr	r1, [sp, #440]
	ldr	r2, [sp, #444]
	ldr	r3, [sp, #448]
	bl	__Z9printBook5Books
	add	r0, sp, #232
	sub	r1, r7, #416
	movw	r2, #204
	bl	_memcpy
	add	r0, sp, #232
	add	r1, r0, #16
	mov	r0, sp
	movw	r2, #188
	str	r2, [sp, #196]                  @ 4-byte Spill
	str	r1, [sp, #200]                  @ 4-byte Spill
	str	r0, [sp, #204]                  @ 4-byte Spill
LBB0_3:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #204]                  @ 4-byte Reload
	ldr	r1, [sp, #200]                  @ 4-byte Reload
	ldr	r2, [sp, #196]                  @ 4-byte Reload
	ldr	r3, [r1], #4
	str	r1, [sp, #188]                  @ 4-byte Spill
	str	r3, [r0], #4
	str	r0, [sp, #192]                  @ 4-byte Spill
	subs	r2, r2, #4
	str	r2, [sp, #196]                  @ 4-byte Spill
	str	r1, [sp, #200]                  @ 4-byte Spill
	str	r0, [sp, #204]                  @ 4-byte Spill
	bne	LBB0_3
@ %bb.4:
	ldr	r0, [sp, #232]
	ldr	r1, [sp, #236]
	ldr	r2, [sp, #240]
	ldr	r3, [sp, #244]
	bl	__Z9printBook5Books
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_8+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_8+8))
LPC0_8:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	ldr	r1, [r7, #-8]
	cmp	r0, r1
	bne	LBB0_6
@ %bb.5:
	movw	r0, #0
	sub	sp, r7, #4
	pop	{r4, r7, pc}
LBB0_6:
	bl	___stack_chk_fail
	trap
	.p2align	2
@ %bb.7:
	.data_region
LCPI0_0:
	.long	6495700                         @ 0x631dd4
LCPI0_1:
	.long	6495407                         @ 0x631caf
	.end_data_region
                                        @ -- End function
	.globl	__Z9printBook5Books             @ -- Begin function _Z9printBook5Books
	.p2align	2
	.code	32                              @ @_Z9printBook5Books
__Z9printBook5Books:
@ %bb.0:
	sub	sp, sp, #16
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #4
	str	r3, [r7, #20]
	str	r2, [r7, #16]
	str	r1, [r7, #12]
	str	r0, [r7, #8]
	add	r1, r7, #8
	str	r1, [sp]                        @ 4-byte Spill
	movw	r0, :lower16:(L_.str.6-(LPC1_0+8))
	movt	r0, :upper16:(L_.str.6-(LPC1_0+8))
LPC1_0:
	add	r0, pc, r0
	bl	_printf
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r1, r0, #50
	movw	r0, :lower16:(L_.str.7-(LPC1_1+8))
	movt	r0, :upper16:(L_.str.7-(LPC1_1+8))
LPC1_1:
	add	r0, pc, r0
	bl	_printf
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r1, r0, #100
	movw	r0, :lower16:(L_.str.8-(LPC1_2+8))
	movt	r0, :upper16:(L_.str.8-(LPC1_2+8))
LPC1_2:
	add	r0, pc, r0
	bl	_printf
                                        @ kill: def $r1 killed $r0
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r0, #200]
	movw	r0, :lower16:(L_.str.9-(LPC1_3+8))
	movt	r0, :upper16:(L_.str.9-(LPC1_3+8))
LPC1_3:
	add	r0, pc, r0
	bl	_printf
	mov	sp, r7
	pop	{r7, lr}
	add	sp, sp, #16
	bx	lr
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
	.asciz	"Book title : %s\n"

L_.str.7:                               @ @.str.7
	.asciz	"Book author : %s\n"

L_.str.8:                               @ @.str.8
	.asciz	"Book subject : %s\n"

L_.str.9:                               @ @.str.9
	.asciz	"Book book_id : %d\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
