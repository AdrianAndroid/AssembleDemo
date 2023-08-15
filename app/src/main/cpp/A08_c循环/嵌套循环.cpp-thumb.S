	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z7for_forv                    @ -- Begin function _Z7for_forv
	.p2align	1
	.code	16                              @ @_Z7for_forv
	.thumb_func	__Z7for_forv
__Z7for_forv:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #16
	movs	r0, #2
	str	r0, [sp, #12]
LBB0_1:                                 @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	ldr	r0, [sp, #12]
	cmp	r0, #100
	bge	LBB0_12
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	movs	r0, #2
	str	r0, [sp, #8]
LBB0_3:                                 @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	bl	___divsi3
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	bgt	LBB0_8
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	bl	___modsi3
	cbnz	r0, LBB0_6
@ %bb.5:                                @   in Loop: Header=BB0_1 Depth=1
	b	LBB0_8
LBB0_6:                                 @   in Loop: Header=BB0_3 Depth=2
	b	LBB0_7
LBB0_7:                                 @   in Loop: Header=BB0_3 Depth=2
	ldr	r0, [sp, #8]
	adds	r0, #1
	str	r0, [sp, #8]
	b	LBB0_3
LBB0_8:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #8]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	bl	___divsi3
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	LBB0_10
@ %bb.9:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp, #12]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
LBB0_10:                                @   in Loop: Header=BB0_1 Depth=1
	b	LBB0_11
LBB0_11:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	adds	r0, #1
	str	r0, [sp, #12]
	b	LBB0_1
LBB0_12:
	movs	r0, #0
	add	sp, #16
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z6while_v                     @ -- Begin function _Z6while_v
	.p2align	1
	.code	16                              @ @_Z6while_v
	.thumb_func	__Z6while_v
__Z6while_v:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #8
	movs	r0, #1
	str	r0, [sp, #4]
LBB1_1:                                 @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_3 Depth 2
	ldr	r0, [sp, #4]
	cmp	r0, #5
	bgt	LBB1_6
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	movs	r0, #1
	str	r0, [sp]
LBB1_3:                                 @   Parent Loop BB1_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	bgt	LBB1_5
@ %bb.4:                                @   in Loop: Header=BB1_3 Depth=2
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC1_0+4))
	movt	r0, :upper16:(L_.str.1-(LPC1_0+4))
LPC1_0:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB1_3
LBB1_5:                                 @   in Loop: Header=BB1_1 Depth=1
	movw	r0, :lower16:(L_.str.2-(LPC1_1+4))
	movt	r0, :upper16:(L_.str.2-(LPC1_1+4))
LPC1_1:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #4]
	adds	r0, #1
	str	r0, [sp, #4]
	b	LBB1_1
LBB1_6:
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z8do_whilev                   @ -- Begin function _Z8do_whilev
	.p2align	1
	.code	16                              @ @_Z8do_whilev
	.thumb_func	__Z8do_whilev
__Z8do_whilev:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #8
	movs	r0, #1
	str	r0, [sp, #4]
LBB2_1:                                 @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_2 Depth 2
	movs	r0, #1
	str	r0, [sp]
LBB2_2:                                 @   Parent Loop BB2_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:(L_.str.3-(LPC2_0+4))
	movt	r0, :upper16:(L_.str.3-(LPC2_0+4))
LPC2_0:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
@ %bb.3:                                @   in Loop: Header=BB2_2 Depth=2
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	ble	LBB2_2
@ %bb.4:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #4]
	adds	r0, #1
	str	r0, [sp, #4]
	movw	r0, :lower16:(L_.str.2-(LPC2_1+4))
	movt	r0, :upper16:(L_.str.2-(LPC2_1+4))
LPC2_1:
	add	r0, pc
	bl	_printf
@ %bb.5:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #5
	ble	LBB2_1
@ %bb.6:
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	1
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #4
	movs	r0, #0
	str	r0, [sp]
	bl	__Z7for_forv
	bl	__Z6while_v
	bl	__Z8do_whilev
	movs	r0, #0
	add	sp, #4
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
