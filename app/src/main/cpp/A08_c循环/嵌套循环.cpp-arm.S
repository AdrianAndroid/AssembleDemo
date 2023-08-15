	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z7for_forv                    @ -- Begin function _Z7for_forv
	.p2align	2
	.code	32                              @ @_Z7for_forv
__Z7for_forv:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #16
	movw	r0, #2
	str	r0, [r7, #-4]
LBB0_1:                                 @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	ldr	r0, [r7, #-4]
	cmp	r0, #100
	bge	LBB0_12
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #2
	str	r0, [sp, #8]
LBB0_3:                                 @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r7, #-4]
	ldr	r1, [sp, #8]
	bl	___divsi3
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	bgt	LBB0_8
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [r7, #-4]
	ldr	r1, [sp, #8]
	bl	___modsi3
	cmp	r0, #0
	bne	LBB0_6
@ %bb.5:                                @   in Loop: Header=BB0_1 Depth=1
	b	LBB0_8
LBB0_6:                                 @   in Loop: Header=BB0_3 Depth=2
	b	LBB0_7
LBB0_7:                                 @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	LBB0_3
LBB0_8:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #8]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [r7, #-4]
	ldr	r1, [sp, #8]
	bl	___divsi3
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	LBB0_10
@ %bb.9:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [r7, #-4]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
LBB0_10:                                @   in Loop: Header=BB0_1 Depth=1
	b	LBB0_11
LBB0_11:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r7, #-4]
	add	r0, r0, #1
	str	r0, [r7, #-4]
	b	LBB0_1
LBB0_12:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z6while_v                     @ -- Begin function _Z6while_v
	.p2align	2
	.code	32                              @ @_Z6while_v
__Z6while_v:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #8
	movw	r0, #1
	str	r0, [sp, #4]
LBB1_1:                                 @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_3 Depth 2
	ldr	r0, [sp, #4]
	cmp	r0, #5
	bgt	LBB1_6
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #1
	str	r0, [sp]
LBB1_3:                                 @   Parent Loop BB1_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bgt	LBB1_5
@ %bb.4:                                @   in Loop: Header=BB1_3 Depth=2
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC1_0+8))
	movt	r0, :upper16:(L_.str.1-(LPC1_0+8))
LPC1_0:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	LBB1_3
LBB1_5:                                 @   in Loop: Header=BB1_1 Depth=1
	movw	r0, :lower16:(L_.str.2-(LPC1_1+8))
	movt	r0, :upper16:(L_.str.2-(LPC1_1+8))
LPC1_1:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	LBB1_1
LBB1_6:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z8do_whilev                   @ -- Begin function _Z8do_whilev
	.p2align	2
	.code	32                              @ @_Z8do_whilev
__Z8do_whilev:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #8
	movw	r0, #1
	str	r0, [sp, #4]
LBB2_1:                                 @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_2 Depth 2
	movw	r0, #1
	str	r0, [sp]
LBB2_2:                                 @   Parent Loop BB2_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:(L_.str.3-(LPC2_0+8))
	movt	r0, :upper16:(L_.str.3-(LPC2_0+8))
LPC2_0:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
@ %bb.3:                                @   in Loop: Header=BB2_2 Depth=2
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	ble	LBB2_2
@ %bb.4:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	movw	r0, :lower16:(L_.str.2-(LPC2_1+8))
	movt	r0, :upper16:(L_.str.2-(LPC2_1+8))
LPC2_1:
	add	r0, pc, r0
	bl	_printf
@ %bb.5:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #5
	ble	LBB2_1
@ %bb.6:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #4
	movw	r0, #0
	str	r0, [sp]
	bl	__Z7for_forv
	bl	__Z6while_v
	bl	__Z8do_whilev
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"%d \346\230\257\350\264\250\346\225\260\n"

L_.str.1:                               @ @.str.1
	.asciz	"%d "

L_.str.2:                               @ @.str.2
	.asciz	"\n"

L_.str.3:                               @ @.str.3
	.asciz	"*"

.subsections_via_symbols
