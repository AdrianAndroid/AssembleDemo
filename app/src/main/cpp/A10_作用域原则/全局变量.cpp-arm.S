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
	movw	r0, #0
	str	r0, [r7, #-4]
	movw	r0, #10   @ a = 10;
	str	r0, [sp, #4]  
	movw	r0, #20   @ b = 20;
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r0, r1    @ g = a + b;
	movw	r1, :lower16:(_g-(LPC0_0+8))
	movt	r1, :upper16:(_g-(LPC0_0+8))
LPC0_0:
	add	r1, pc, r1
	str	r0, [r1]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	movw	r0, :lower16:(_g-(LPC0_1+8))
	movt	r0, :upper16:(_g-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	ldr	r3, [r0]
	movw	r0, :lower16:(L_.str-(LPC0_2+8))
	movt	r0, :upper16:(L_.str-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.globl	_g                              @ @g
.zerofill __DATA,__common,_g,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"value of a = %d, b = %d and g = %d\n"

.subsections_via_symbols
