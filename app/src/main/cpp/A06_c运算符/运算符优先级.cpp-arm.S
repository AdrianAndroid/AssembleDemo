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
	sub	sp, sp, #32
	movw	r0, #0
	str	r0, [r7, #-4]
	movw	r0, #20       @ int a = 20;
	str	r0, [r7, #-8]
	movw	r0, #10       @ int b = 10;
	str	r0, [r7, #-12]
	movw	r0, #15       @ int c = 15;
	str	r0, [sp, #16]
	movw	r0, #5        @ int d = 5;
	str	r0, [sp, #12]     
	ldr	r0, [r7, #-8]
	ldr	r1, [r7, #-12]
	add	r0, r0, r1        @ (a + b)
	ldr	r1, [sp, #16]     @ 15
	mul	r0, r0, r1        @ * c
	ldr	r1, [sp, #12]
	bl	___divsi3         @ / d
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [r7, #-8]
	ldr	r1, [r7, #-12]
	add	r0, r0, r1
	ldr	r1, [sp, #16]
	mul	r0, r0, r1
	ldr	r1, [sp, #12]
	bl	___divsi3
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [r7, #-8]
	ldr	r1, [r7, #-12]
	add	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	bl	___divsi3
	mov	r1, r0
	ldr	r0, [sp]                        @ 4-byte Reload
	mul	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [r7, #-8]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r7, #-12]
	ldr	r1, [sp, #16]
	mul	r0, r0, r1
	ldr	r1, [sp, #12]
	bl	___divsi3
	mov	r1, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, r1
	str	r0, [sp, #8]
	ldr	r1, [sp, #8]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
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
