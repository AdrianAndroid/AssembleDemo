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
	movw	r0, #100     @ int a = 100;
	str	r0, [sp, #4]
	movw	r0, #200     @ int b = 200;
	str	r0, [sp]
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
	add	r0, sp, #4
	mov	r1, sp
	bl	__Z4swapPiS_
	ldr	r1, [sp, #4]
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	bl	_printf
	ldr	r1, [sp]
	movw	r0, :lower16:(L_.str.3-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z4swapPiS_                    @ -- Begin function _Z4swapPiS_
	.p2align	2
	.code	32                              @ @_Z4swapPiS_
__Z4swapPiS_:
@ %bb.0:
	sub	sp, sp, #12      @ 将栈指针 sp 减去 12，即分配了 12 个字节的栈空间。
	str	r0, [sp, #8]     @ 将寄存器 r0 的值存储到栈上偏移为 8 字节的位置。
	str	r1, [sp, #4]     @ 将寄存器 r1 的值存储到栈上偏移为 4 字节的位置。
	ldr	r0, [sp, #8]     @ 将栈上偏移为 8 字节的位置的值加载到寄存器 r0 中。
	ldr	r0, [r0]         @ 从寄存器 r0 所指示的内存地址加载一个值，并将该值存储回寄存器 r0。
	str	r0, [sp]         @ 将寄存器 r0 的值存储到栈顶位置。
	ldr	r0, [sp, #4]     @ 将栈上偏移为 4 字节的位置的值加载到寄存器 r0 中。
	ldr	r0, [r0]         @ 从寄存器 r0 所指示的内存地址加载一个值，并将该值存储回寄存器 r0。
	ldr	r1, [sp, #8]     @ 将栈上偏移为 8 字节的位置的值加载到寄存器 r1 中。
	str	r0, [r1]         @ 将寄存器 r0 的值存储到寄存器 r1 所指示的内存地址。
	ldr	r0, [sp]         @ 将栈顶位置的值加载到寄存器 r0 中。
	ldr	r1, [sp, #4]     @ 将栈上偏移为 4 字节的位置的值加载到寄存器 r1 中。
	str	r0, [r1]         @ 将寄存器 r0 的值存储到寄存器 r1 所指示的内存地址。
	add	sp, sp, #12      @ 恢复栈指针，将栈指针 sp 增加 12，释放之前分配的栈空间。
	bx	lr               @ 分支指令，跳转到链接寄存器 lr 所指示的地址，通常用于函数返回。
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\344\272\244\346\215\242\345\211\215\357\274\214a \347\232\204\345\200\274\357\274\232 %d\n"

L_.str.1:                               @ @.str.1
	.asciz	"\344\272\244\346\215\242\345\211\215\357\274\214b \347\232\204\345\200\274\357\274\232 %d\n"

L_.str.2:                               @ @.str.2
	.asciz	"\344\272\244\346\215\242\345\220\216\357\274\214a \347\232\204\345\200\274\357\274\232 %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"\344\272\244\346\215\242\345\220\216\357\274\214b \347\232\204\345\200\274\357\274\232 %d\n"

.subsections_via_symbols
