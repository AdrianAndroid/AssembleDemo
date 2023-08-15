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
	movs	r0, #20
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r1
	movw	r1, :lower16:(_g-(LPC0_0+4))
	movt	r1, :upper16:(_g-(LPC0_0+4))
LPC0_0:
	add	r1, pc
	str	r0, [r1]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	movw	r0, :lower16:(_g-(LPC0_1+4))
	movt	r0, :upper16:(_g-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	ldr	r3, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_2+4))
	movt	r0, :upper16:(L_.str-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #12
	pop	{r7, pc}
                                        @ -- End function
	.globl	_g                              @ @g
.zerofill __DATA,__common,_g,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"value of a = %d, b = %d and g = %d\n"

.subsections_via_symbols
