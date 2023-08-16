	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #64
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
	str	r0, [r7, #-4]
	movw	r0, #0
	str	r0, [sp, #12]
	movw	r0, :lower16:(l___const.main.str1-(LPC0_2+8))
	movt	r0, :upper16:(l___const.main.str1-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	str	r0, [sp]                        @ 4-byte Spill
	ldrb	r1, [r0]
	strb	r1, [r7, #-18]
	ldrb	r1, [r0, #1]
	strb	r1, [r7, #-17]
	ldrb	r1, [r0, #2]
	strb	r1, [r7, #-16]
	ldrb	r1, [r0, #3]
	strb	r1, [r7, #-15]
	ldrb	r1, [r0, #4]
	strb	r1, [r7, #-14]
	ldrb	r1, [r0, #5]
	strb	r1, [r7, #-13]
	ldrb	r1, [r0, #6]
	strb	r1, [r7, #-12]
	ldrb	r1, [r0, #7]
	strb	r1, [r7, #-11]
	ldrb	r1, [r0, #8]
	strb	r1, [r7, #-10]
	ldrb	r1, [r0, #9]
	strb	r1, [r7, #-9]
	ldrb	r1, [r0, #10]
	strb	r1, [r7, #-8]
	ldrb	r1, [r0, #11]
	strb	r1, [r7, #-7]
	ldrb	r1, [r0, #12]
	strb	r1, [r7, #-6]
	ldrb	r0, [r0, #13]
	strb	r0, [r7, #-5]
	movw	r0, :lower16:(l___const.main.str2-(LPC0_3+8))
	movt	r0, :upper16:(l___const.main.str2-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldrb	r1, [r0]
	strb	r1, [sp, #32]
	ldrb	r1, [r0, #1]
	strb	r1, [sp, #33]
	ldrb	r1, [r0, #2]
	strb	r1, [sp, #34]
	ldrb	r1, [r0, #3]
	strb	r1, [sp, #35]
	ldrb	r1, [r0, #4]
	strb	r1, [sp, #36]
	ldrb	r1, [r0, #5]
	strb	r1, [sp, #37]
	ldrb	r1, [r0, #6]
	strb	r1, [sp, #38]
	ldrb	r1, [r0, #7]
	strb	r1, [sp, #39]
	ldrb	r1, [r0, #8]
	strb	r1, [sp, #40]
	ldrb	r1, [r0, #9]
	strb	r1, [sp, #41]
	ldrb	r1, [r0, #10]
	strb	r1, [sp, #42]
	ldrb	r1, [r0, #11]
	strb	r1, [sp, #43]
	ldrb	r1, [r0, #12]
	strb	r1, [sp, #44]
	ldrb	r0, [r0, #13]
	strb	r0, [sp, #45]
	add	r0, sp, #18
	sub	r1, r7, #18
	bl	_strcpy
	add	r1, sp, #18
	movw	r0, :lower16:(L_.str-(LPC0_4+8))
	movt	r0, :upper16:(L_.str-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
	sub	r0, r7, #18
	add	r1, sp, #32
	bl	_strcat
	sub	r1, r7, #18
	movw	r0, :lower16:(L_.str.1-(LPC0_5+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_5+8))
LPC0_5:
	add	r0, pc, r0
	bl	_printf
	sub	r0, r7, #18
	bl	_strlen
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str.2-(LPC0_6+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_6+8))
LPC0_6:
	add	r0, pc, r0
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_7+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_7+8))
LPC0_7:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	ldr	r1, [r7, #-4]
	cmp	r0, r1
	bne	LBB0_2
@ %bb.1:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
LBB0_2:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.section	__TEXT,__const
l___const.main.str1:                    @ @__const.main.str1
	.asciz	"runoob\000\000\000\000\000\000\000"

l___const.main.str2:                    @ @__const.main.str2
	.asciz	"google\000\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"strcpy( str3, str1) :  %s\n"

L_.str.1:                               @ @.str.1
	.asciz	"strcat( str1, str2):   %s\n"

L_.str.2:                               @ @.str.2
	.asciz	"strlen(str1) :  %d\n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
