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
	sub	sp, sp, #24
	bfc	sp, #0, #3
	movw	r0, #4       @ int a = 4;
	str	r0, [sp, #20]
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	movw	r1, #4       @ sizeof(a)
	bl	_printf
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	movw	r1, #2       @ sizeof(b)
	bl	_printf
	movw	r0, :lower16:(L_.str.2-(LPC0_2+8))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+8))
LPC0_2:
	add	r0, pc, r0
	movw	r1, #8       @ sizeof(c)
	bl	_printf
	add	r0, sp, #20
	str	r0, [sp, #4]
	ldr	r1, [sp, #20]    @ a = 4;
	movw	r0, :lower16:(L_.str.3-(LPC0_3+8))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	movw	r0, :lower16:(L_.str.4-(LPC0_4+8))
	movt	r0, :upper16:(L_.str.4-(LPC0_4+8))
LPC0_4:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #10     @ a = 10;
	str	r0, [sp, #20]
	ldr	r0, [sp, #20]       @ 从栈顶（sp）偏移 20 的位置加载数据到寄存器 r0 中。
	cmp	r0, #1              @ 将寄存器 r0 的值与立即数 1 进行比较。这条指令之后的 moveq 指令将根据比较结果设置条件码。
	movw	r1, #0          @ 将立即数 0 移动到寄存器 r1 的低 16 位。
	moveq	r1, #1          @ 如果前面的比较结果为相等（equal），则将立即数 1 移动到寄存器 r1 的低 16 位。
	movw	r0, #20         @ 将立即数 20 移动到寄存器 r0 的低 16 位。
	tst	r1, #1              @ 将寄存器 r1 的值与立即数 1 进行逻辑与（AND）操作，并设置条件码。
	moveq	r0, #30         @ 如果前面的逻辑与操作结果为真（相等），则将立即数 30 移动到寄存器 r0 的低 16 位。
	strh	r0, [sp, #18]   @ 将寄存器 r0 的低 16 位数据存储到栈顶（sp）偏移 18 的位置。
	ldrsh	r1, [sp, #18]   @ 从栈顶（sp）偏移 18 的位置加载半字（16 位）数据到寄存器 r1 中，有符号扩展。
	movw	r0, :lower16:(L_.str.5-(LPC0_5+8))
	movt	r0, :upper16:(L_.str.5-(LPC0_5+8))
LPC0_5:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [sp, #20]
	cmp	r0, #10
	movw	r1, #0
	moveq	r1, #1
	movw	r0, #20
	tst	r1, #1
	moveq	r0, #30
	strh	r0, [sp, #18]
	ldrsh	r1, [sp, #18]
	movw	r0, :lower16:(L_.str.5-(LPC0_6+8))
	movt	r0, :upper16:(L_.str.5-(LPC0_6+8))
LPC0_6:
	add	r0, pc, r0
	bl	_printf
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"Line 1 - \345\217\230\351\207\217 a \347\232\204\345\244\247\345\260\217 = %lu\n"

L_.str.1:                               @ @.str.1
	.asciz	"Line 2 - \345\217\230\351\207\217 b \347\232\204\345\244\247\345\260\217 = %lu\n"

L_.str.2:                               @ @.str.2
	.asciz	"Line 3 - \345\217\230\351\207\217 c \347\232\204\345\244\247\345\260\217 = %lu\n"

L_.str.3:                               @ @.str.3
	.asciz	"a \347\232\204\345\200\274\346\230\257 %d\n"

L_.str.4:                               @ @.str.4
	.asciz	"*ptr \346\230\257 %d\n"

L_.str.5:                               @ @.str.5
	.asciz	"b \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
