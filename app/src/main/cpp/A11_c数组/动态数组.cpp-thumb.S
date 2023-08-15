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
	sub	sp, #20
	movs	r0, #0
	str	r0, [sp, #16]
	movs	r0, #5
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	lsls	r0, r0, #2
	bl	_malloc
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	movs	r1, #0
	cmp	r0, r1
	bne	LBB0_2
@ %bb.1:
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	movs	r0, #1
	str	r0, [sp, #16]
	b	LBB0_11
LBB0_2:
	ldr	r1, [sp, #12]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	str	r0, [sp, #4]
LBB0_3:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bge	LBB0_6
@ %bb.4:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	lsls	r1, r1, #2
	add	r1, r0
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_scanf
@ %bb.5:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #4]
	adds	r0, #1
	str	r0, [sp, #4]
	b	LBB0_3
LBB0_6:
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	str	r0, [sp]
LBB0_7:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bge	LBB0_10
@ %bb.8:                                @   in Loop: Header=BB0_7 Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	lsls	r1, r1, #2
	add	r0, r1
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
@ %bb.9:                                @   in Loop: Header=BB0_7 Depth=1
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB0_7
LBB0_10:
	movw	r0, :lower16:(L_.str.5-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	bl	_free
	movs	r0, #0
	str	r0, [sp, #16]
LBB0_11:
	ldr	r0, [sp, #16]
	add	sp, #20
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Memory allocation failed.\n"

L_.str.1:                               @ @.str.1
	.asciz	"Enter %d elements: "

L_.str.2:                               @ @.str.2
	.asciz	"%d"

L_.str.3:                               @ @.str.3
	.asciz	"Dynamic Array: "

L_.str.4:                               @ @.str.4
	.asciz	"%d "

L_.str.5:                               @ @.str.5
	.asciz	"\n"

.subsections_via_symbols
