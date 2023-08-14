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
	movw	r0, #60        @ unsigned int a = 60;    /* 60 = 0011 1100 */
	str	r0, [r7, #-4]
	movw	r0, #13        @ unsigned int b = 13;    /* 13 = 0000 1101 */
	str	r0, [sp, #4]
	movw	r0, #0         @ int c = 0;
	str	r0, [sp]
	ldr	r0, [r7, #-4]
	ldr	r1, [sp, #4]
	and	r0, r0, r1         @ c = a & b;       /* 12 = 0000 1100 */
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [r7, #-4]
	ldr	r1, [sp, #4]
	orr	r0, r0, r1        @ c = a | b;       /* 61 = 0011 1101 */
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [r7, #-4]
	ldr	r1, [sp, #4]
	eor	r0, r0, r1        @ c = a ^ b;       /* 49 = 0011 0001 */
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [r7, #-4]
	mvn	r1, #0            @ 将数字 0 取反（bitwise NOT）
	eor	r0, r0, r1
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [r7, #-4]
	lsl	r0, r0, #2        @ c = a << 2;     /* 240 = 1111 0000 */
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+8))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [r7, #-4]
	lsr	r0, r0, #2        @ c = a >> 2;     /* 15 = 0000 1111 */
	str	r0, [sp]
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.5-(LPC0_5+8))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+8))
LPC0_5:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Line 1 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"Line 2 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.2:                               @ @.str.2
	.asciz	"Line 3 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"Line 4 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.4:                               @ @.str.4
	.asciz	"Line 5 - c \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.5:                               @ @.str.5
	.asciz	"Line 6 - c \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
