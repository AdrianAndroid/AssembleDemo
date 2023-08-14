	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	__Z9addtwonumv                  @ -- Begin function _Z9addtwonumv
	.p2align	1
	.code	16                              @ @_Z9addtwonumv
	.thumb_func	__Z9addtwonumv
__Z9addtwonumv:
@ %bb.0:
	movs	r0, #1
	movw	r1, :lower16:(_x-(LPC0_0+4))
	movt	r1, :upper16:(_x-(LPC0_0+4))
LPC0_0:
	add	r1, pc
	str	r0, [r1]
	movs	r0, #2
	movw	r1, :lower16:(_y-(LPC0_1+4))
	movt	r1, :upper16:(_y-(LPC0_1+4))
LPC0_1:
	add	r1, pc
	str	r0, [r1]
	movw	r0, :lower16:(_x-(LPC0_2+4))
	movt	r0, :upper16:(_x-(LPC0_2+4))
LPC0_2:
	add	r0, pc
	ldr	r0, [r0]
	movw	r1, :lower16:(_y-(LPC0_3+4))
	movt	r1, :upper16:(_y-(LPC0_3+4))
LPC0_3:
	add	r1, pc
	ldr	r1, [r1]
	add	r0, r1
	bx	lr
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	1
	.code	16                              @ @main
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r7, lr} @ 将寄存器 r7 和 lr 的值压入堆栈
	mov	r7, sp       @ 将堆栈指针 sp 的值复制到寄存器 r7
	sub	sp, #8       @ 将堆栈指针 sp 减去 8
	movs	r0, #0   @ 将 0 移动到寄存器 r0
	str	r0, [sp, #4] @ 将寄存器 r0 的值存储到 sp+4 的内存位置
	bl	__Z9addtwonumv @ 调用名为 __Z9addtwonumv 的函数
	str	r0, [sp]     @ 将寄存器 r0 的值存储到 sp 的内存位置
	ldr	r1, [sp]     @ 从 sp 的内存位置加载数据到寄存器 r1
	movw	r0, :lower16:(L_.str-(LPC1_0+4)) @ 将 L_.str-(LPC1_0+4) 的低 16 位移动到寄存器 r0
	movt	r0, :upper16:(L_.str-(LPC1_0+4)) @ 将 L_.str-(LPC1_0+4) 的高 16 位移动到寄存器 r0
LPC1_0:
	add	r0, pc
	bl	_printf
	movs	r0, #0
	add	sp, #8
	pop	{r7, pc}
                                        @ -- End function
	.globl	_x                              @ @x
.zerofill __DATA,__common,_x,4,2
	.globl	_y                              @ @y
.zerofill __DATA,__common,_y,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"result \344\270\272: %d"

.subsections_via_symbols
