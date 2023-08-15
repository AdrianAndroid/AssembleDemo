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
	sub	sp, #12
	movs	r0, #0
	str	r0, [sp, #8]
	movs	r0, #10
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r0, #5
	beq	LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, #10
	beq	LBB0_4
	b	LBB0_2
LBB0_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, #15
	beq	LBB0_5
	b	LBB0_6
LBB0_3:
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	b	LBB0_7
LBB0_4:
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	b	LBB0_7
LBB0_5:
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	b	LBB0_7
LBB0_6:
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
LBB0_7:
	movs	r0, #0
	add	sp, #12
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"iphone\357\274\201\357\274\201\n"

L_.str.1:                               @ @.str.1
	.asciz	"car\357\274\201\357\274\201\n"

L_.str.2:                               @ @.str.2
	.asciz	"building\357\274\201\357\274\201\n"

L_.str.3:                               @ @.str.3
	.asciz	"sorry\357\274\201\357\274\201\n"

.subsections_via_symbols
