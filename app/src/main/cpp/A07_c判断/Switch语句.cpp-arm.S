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
	mov	r0, #0
	str	r0, [r7, #-4]
	mov	r0, #100      @ int a = 100;
	str	r0, [sp, #4]
	mov	r0, #200      @ int b = 200;
	str	r0, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #100 @ 比较寄存器 r0 中的值与常数 100。这条指令会设置条件标志位，用于后续的条件分支判断。
	bne	LBB0_4   @ 如果前面的比较结果不等于零（不等），则跳转到标签 LBB0_4 处执行。这表示如果 r0 不等于 100，那么会执行与标签 LBB0_4 关联的代码。
	b	LBB0_1   @ 无条件地跳转到标签 LBB0_1 处执行。无论前面的比较结果如何，都会执行与标签 LBB0_1 关联的代码。
LBB0_1:
	movw	r0, :lower16:(L_.str-(LPC0_0+8))
	movt	r0, :upper16:(L_.str-(LPC0_0+8))
LPC0_0:
	add	r0, pc, r0
	bl	_printf
	ldr	r0, [sp]
	cmp	r0, #200
	bne	LBB0_3
	b	LBB0_2
LBB0_2:
	movw	r0, :lower16:(L_.str.1-(LPC0_1+8))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+8))
LPC0_1:
	add	r0, pc, r0
	bl	_printf
LBB0_3:
	b	LBB0_4
LBB0_4:
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\350\277\231\346\230\257\345\244\226\351\203\250 switch \347\232\204\344\270\200\351\203\250\345\210\206\n"

L_.str.1:                               @ @.str.1
	.asciz	"\350\277\231\346\230\257\345\206\205\351\203\250 switch \347\232\204\344\270\200\351\203\250\345\210\206\n"

L_.str.2:                               @ @.str.2
	.asciz	"a \347\232\204\345\207\206\347\241\256\345\200\274\346\230\257 %d\n"

L_.str.3:                               @ @.str.3
	.asciz	"b \347\232\204\345\207\206\347\241\256\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
