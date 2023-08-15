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
	sub	sp, sp, #12
	mov	r0, #0
	str	r0, [r7, #-4]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	add	r1, sp, #4
	bl	_scanf
	ldr	r0, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
	cmp	r0, #1
	beq	LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, #2
	beq	LBB0_4
	b	LBB0_2
LBB0_2:
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, #3
	beq	LBB0_5
	b	LBB0_6
LBB0_3:
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	b	LBB0_7
LBB0_4:
	movw	r0, :lower16:(L_.str.3-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
	b	LBB0_7
LBB0_5:
	movw	r0, :lower16:(L_.str.4-(LPC0_4+8))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
	b	LBB0_7
LBB0_6:
	movw	r0, :lower16:(L_.str.5-(LPC0_5+8))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+8))
LPC0_5:
	add	r0, pc, r0
	bl	_printf
LBB0_7:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\350\257\267\350\276\223\345\205\245\344\275\240\345\226\234\346\254\242\347\232\204\351\242\234\350\211\262: (1. red, 2. green, 3. blue): "

L_.str.1:                               @ @.str.1
	.asciz	"%u"

L_.str.2:                               @ @.str.2
	.asciz	"RED"

L_.str.3:                               @ @.str.3
	.asciz	"GREEN"

L_.str.4:                               @ @.str.4
	.asciz	"BLUE"

L_.str.5:                               @ @.str.5
	.asciz	"DEFAULT"

.subsections_via_symbols
