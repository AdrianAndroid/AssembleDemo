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
	movs	r0, #5
	str	r0, [sp, #8]
	movs	r0, #20
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	cbz	r0, LBB0_3
@ %bb.1:
	ldr	r0, [sp, #4]
	cbz	r0, LBB0_3
@ %bb.2:
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
LBB0_3:
	ldr	r0, [sp, #8]
	cbnz	r0, LBB0_5
@ %bb.4:
	ldr	r0, [sp, #4]
	cbz	r0, LBB0_6
LBB0_5:
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
LBB0_6:
	movs	r0, #0
	str	r0, [sp, #8]
	movs	r0, #10
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	cbz	r0, LBB0_9
@ %bb.7:
	ldr	r0, [sp, #4]
	cbz	r0, LBB0_9
@ %bb.8:
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	b	LBB0_10
LBB0_9:
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
LBB0_10:
	ldr	r0, [sp, #8]
	cbz	r0, LBB0_12
@ %bb.11:
	ldr	r0, [sp, #4]
	cbnz	r0, LBB0_13
LBB0_12:
	movw	r0, :lower16:(L_.str.4-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
LBB0_13:
	ldr	r0, [sp, #12]
	add	sp, #16
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Line 1 - true  \346\235\241\344\273\266\344\270\272\347\234\237\n"

L_.str.1:                               @ @.str.1
	.asciz	"Line 2 - false \346\235\241\344\273\266\344\270\272\347\234\237\n"

L_.str.2:                               @ @.str.2
	.asciz	"Line 3 - true  \346\235\241\344\273\266\344\270\272\347\234\237\n"

L_.str.3:                               @ @.str.3
	.asciz	"Line 3 - false \346\235\241\344\273\266\344\270\272\345\201\207\n"

L_.str.4:                               @ @.str.4
	.asciz	"Line 4 - true \346\235\241\344\273\266\344\270\272\347\234\237\n"

.subsections_via_symbols
