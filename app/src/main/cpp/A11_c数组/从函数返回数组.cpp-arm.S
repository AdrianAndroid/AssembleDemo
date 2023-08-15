	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z9getRandomv                  @ -- Begin function _Z9getRandomv
	.p2align	2
	.code	32                              @ @_Z9getRandomv
__Z9getRandomv:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #4
	movw	r0, #0
	bl	_time
	bl	_srand
	movw	r0, #0
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #10
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	bl	_rand
	mov	r1, r0
	ldr	r2, [sp]
	movw	r0, :lower16:(__ZZ9getRandomvE1r-(LPC0_0+8))
	movt	r0, :upper16:(__ZZ9getRandomvE1r-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	str	r1, [r0, r2, lsl #2]
	ldr	r2, [sp]
	mov	r1, r2
	add	r0, r0, r2, lsl #2
	ldr	r2, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_1+8))
	movt	r0, :upper16:(L_.str-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	movw	r0, :lower16:(__ZZ9getRandomvE1r-(LPC0_2+8))
	movt	r0, :upper16:(__ZZ9getRandomvE1r-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
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
	sub	sp, sp, #12
	movw	r0, #0
	str	r0, [r7, #-4]
	bl	__Z9getRandomv
	str	r0, [sp, #4]
	movw	r0, #0
	str	r0, [sp]
LBB1_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #10
	bge	LBB1_4
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r2, [sp]
	mov	r1, r2
	ldr	r0, [sp, #4]
	add	r0, r0, r2, lsl #2              @ 这条指令将寄存器 r0 和寄存器 r2 中的值相加，然后将左移运算 (lsl #2) 后的结果存储到寄存器 r0 中
	ldr	r2, [r0]
	movw	r0, :lower16:(L_.str.1-(LPC1_0+8))
	movt	r0, :upper16:(L_.str.1-(LPC1_0+8))
LPC1_0:
	add	r0, pc, r0
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	LBB1_1
LBB1_4:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
.zerofill __DATA,__bss,__ZZ9getRandomvE1r,40,2 @ @_ZZ9getRandomvE1r
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"r[%d] = %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"*(p + %d) : %d\n"

.subsections_via_symbols
