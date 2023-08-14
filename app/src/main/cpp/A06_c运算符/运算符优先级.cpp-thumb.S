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
	sub	sp, #32
	movs	r0, #0
	str	r0, [sp, #28]
	movs	r0, #20
	str	r0, [sp, #24]
	movs	r0, #10
	str	r0, [sp, #20]
	movs	r0, #15
	str	r0, [sp, #16]
	movs	r0, #5
	str	r0, [sp, #12]
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #20]
	add	r0, r1
	ldr	r1, [sp, #16]
	muls	r0, r1, r0
	ldr	r1, [sp, #12]
	bl	___divsi3
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #20]
	add	r0, r1
	ldr	r1, [sp, #16]
	muls	r0, r1, r0
	ldr	r1, [sp, #12]
	bl	___divsi3
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #20]
	add	r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	bl	___divsi3
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	muls	r0, r1, r0
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	bl	_printf
	ldr	r0, [sp, #24]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #16]
	muls	r0, r1, r0
	ldr	r1, [sp, #12]
	bl	___divsi3
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r1
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #32
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"(a + b) * c / d \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"((a + b) * c) / d \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.2:                               @ @.str.2
	.asciz	"(a + b) * (c / d) \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"a + (b * c) / d \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
