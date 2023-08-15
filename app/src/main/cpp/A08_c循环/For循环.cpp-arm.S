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
	sub	sp, sp, #8
	movw	r0, #0
	str	r0, [sp, #4]
	movw	r0, #10     @ int a = 10;
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #20         @ a < 20;
	bge	LBB0_4
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
@ %bb.3:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1       @ a = a + 1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"a \347\232\204\345\200\274\357\274\232 %d\n"

.subsections_via_symbols
