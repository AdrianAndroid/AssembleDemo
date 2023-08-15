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
	sub	sp, #16
	movs	r0, #0
	str	r0, [sp, #12]
	movs	r0, #10
	str	r0, [sp, #8]
	movs	r0, #20
	str	r0, [sp, #4]
	movs	r0, #0
	str	r0, [sp]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	bl	__Z3sumii
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #16
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z3sumii                       @ -- Begin function _Z3sumii
	.p2align	1
	.code	16                              @ @_Z3sumii
	.thumb_func	__Z3sumii
__Z3sumii:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str.2-(LPC1_0+4))
	movt	r0, :upper16:(L_.str.2-(LPC1_0+4))
LPC1_0:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.3-(LPC1_1+4))
	movt	r0, :upper16:(L_.str.3-(LPC1_1+4))
LPC1_1:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r1
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.section	__DATA,__data
	.globl	_a                              @ @a
	.p2align	2
_a:
	.long	20                              @ 0x14

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"value of a in main() = %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"value of c in main() = %d\n"

L_.str.2:                               @ @.str.2
	.asciz	"value of a in sum() = %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"value of b in sum() = %d\n"

.subsections_via_symbols
