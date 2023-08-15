	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z9getRandomv                  @ -- Begin function _Z9getRandomv
	.p2align	1
	.code	16                              @ @_Z9getRandomv
	.thumb_func	__Z9getRandomv
__Z9getRandomv:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #4
	movs	r0, #0
	bl	_time
	bl	_srand
	movs	r0, #0
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #10
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	bl	_rand
	ldr	r2, [sp]
	movw	r1, :lower16:(__ZZ9getRandomvE1r-(LPC0_0+4))
	movt	r1, :upper16:(__ZZ9getRandomvE1r-(LPC0_0+4))
LPC0_0:
	add	r1, pc
	lsls	r2, r2, #2
	add	r1, r2
	str	r0, [r1]
	ldr	r1, [sp]
	ldr	r2, [sp]
	movw	r0, :lower16:(__ZZ9getRandomvE1r-(LPC0_1+4))
	movt	r0, :upper16:(__ZZ9getRandomvE1r-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	lsls	r2, r2, #2
	add	r0, r2
	ldr	r2, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_2+4))
	movt	r0, :upper16:(L_.str-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	movw	r0, :lower16:(__ZZ9getRandomvE1r-(LPC0_3+4))
	movt	r0, :upper16:(__ZZ9getRandomvE1r-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	add	sp, #4
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
	sub	sp, #12
	movs	r0, #0
	str	r0, [sp, #8]
	bl	__Z9getRandomv
	str	r0, [sp, #4]
	movs	r0, #0
	str	r0, [sp]
LBB1_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #10
	bge	LBB1_4
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r2, [sp]
	lsls	r2, r2, #2
	add	r0, r2
	ldr	r2, [r0]
	movw	r0, :lower16:(L_.str.1-(LPC1_0+4))
	movt	r0, :upper16:(L_.str.1-(LPC1_0+4))
LPC1_0:
	add	r0, pc
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp]
	adds	r0, #1
	str	r0, [sp]
	b	LBB1_1
LBB1_4:
	movs	r0, #0
	add	sp, #12
	pop	{r7, pc}
                                        @ -- End function
.zerofill __DATA,__bss,__ZZ9getRandomvE1r,40,2 @ @_ZZ9getRandomvE1r
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"r[%d] = %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"*(p + %d) : %d\n"

.subsections_via_symbols
