	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z3maxii                       @ -- Begin function _Z3maxii
	.p2align	2
	.code	32                              @ @_Z3maxii
__Z3maxii:
@ %bb.0:
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	cmp	r0, r1
	ble	LBB0_2
@ %bb.1:
	ldr	r0, [sp, #8]
	str	r0, [sp]                        @ 4-byte Spill
	b	LBB0_3
LBB0_2:
	ldr	r0, [sp, #4]
	str	r0, [sp]                        @ 4-byte Spill
LBB0_3:
	ldr	r0, [sp]                        @ 4-byte Reload
	add	sp, sp, #12
	bx	lr
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #28
	movw	r0, #0
	str	r0, [r7, #-4]
	movw	r0, :lower16:(__Z3maxii-(LPC1_0+8))
	movt	r0, :upper16:(__Z3maxii-(LPC1_0+8))
LPC1_0:
	add	r0, pc, r0
	str	r0, [r7, #-8]
	movw	r0, :lower16:(L_.str-(LPC1_1+8))
	movt	r0, :upper16:(L_.str-(LPC1_1+8))
LPC1_1:
	add	r0, pc, r0
	bl	_printf
	movw	r0, :lower16:(L_.str.1-(LPC1_2+8))
	movt	r0, :upper16:(L_.str.1-(LPC1_2+8))
LPC1_2:
	add	r0, pc, r0
	sub	r1, r7, #12
	add	r2, sp, #12
	add	r3, sp, #8
	bl	_scanf
	ldr	r0, [r7, #-8]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r2, [r7, #-8]
	ldr	r0, [r7, #-12]
	ldr	r1, [sp, #12]
	blx	r2
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #8]
	blx	r2
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str.2-(LPC1_3+8))
	movt	r0, :upper16:(L_.str.2-(LPC1_3+8))
LPC1_3:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\350\257\267\350\276\223\345\205\245\344\270\211\344\270\252\346\225\260\345\255\227:"

L_.str.1:                               @ @.str.1
	.asciz	"%d %d %d"

L_.str.2:                               @ @.str.2
	.asciz	"\346\234\200\345\244\247\347\232\204\346\225\260\345\255\227\346\230\257: %d\n"

.subsections_via_symbols
