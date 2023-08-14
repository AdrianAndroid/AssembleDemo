	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	3
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:               @ 是一个标签，表示一个基本块的开始
	push	{r7, lr}
	mov	r7, sp
	sub	sp, #4
	movs	r0, #0
	str	r0, [sp]
	movw	r0, :lower16:(L_.str-(LPC0_0+4))
	movt	r0, :upper16:(L_.str-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	movs	r1, #4
	bl	_printf
	movw	r0, :lower16:(L_.str.1-(LPC0_1+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	vldr	d16, LCPI0_1 @ 从内存地址 LCPI0_1 加载一个双精度浮点数到寄存器 d16 中
	vmov	r1, r2, d16  @ 将双精度浮点寄存器 d16 的内容移动到两个通用寄存器 r1 和 r2 中
	bl	_printf
	movw	r0, :lower16:(L_.str.2-(LPC0_2+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	vldr	d16, LCPI0_0
	vmov	r1, r2, d16
	bl	_printf
	movw	r0, :lower16:(L_.str.3-(LPC0_3+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_3+4))
LPC0_3:
	add	r0, pc
	movs	r1, #6
	bl	_printf
	movs	r0, #0
	add	sp, #4
	pop	{r7, pc}
	.p2align	3
@ %bb.1:
	.data_region
LCPI0_0:
	.long	3758096384                      @ double 3.4028234663852886E+38
	.long	1206910975
LCPI0_1:
	.long	0                               @ double 1.1754943508222875E-38
	.long	940572672
	.end_data_region
                                        @ -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"float \345\255\230\345\202\250\346\234\200\345\244\247\345\255\227\350\212\202\346\225\260 : %lu \n"

L_.str.1:                               @ @.str.1
	.asciz	"float \346\234\200\345\260\217\345\200\274: %E\n"

L_.str.2:                               @ @.str.2
	.asciz	"float \346\234\200\345\244\247\345\200\274: %E\n"

L_.str.3:                               @ @.str.3
	.asciz	"\347\262\276\345\272\246\345\200\274: %d\n"

.subsections_via_symbols
