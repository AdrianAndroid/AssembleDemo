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
	sub	sp, sp, #16
	movw	r0, #0
	str	r0, [r7, #-4]
	movw	r0, #100
	str	r0, [sp, #8]
	movw	r0, #200
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	bl	__Z3maxii
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
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
	ble	LBB1_2
@ %bb.1:
	ldr	r0, [sp, #8]
	str	r0, [sp]
	b	LBB1_3
LBB1_2:
	ldr	r0, [sp, #4]
	str	r0, [sp]
LBB1_3:
	ldr	r0, [sp]
	add	sp, sp, #12
	bx	lr
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Max value is : %d\n"

.subsections_via_symbols
