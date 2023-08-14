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
	sub	sp, #4
	movs	r0, #0
	str	r0, [sp]
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:(__ZL5count-(LPC0_0+4))
	movt	r0, :upper16:(__ZL5count-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	ldr	r0, [r0]
	add.w	r1, r0, #-1 @ 将寄存器 r0 中的值减去 1，然后将结果存储到寄存器 r1 中
	movw	r2, :lower16:(__ZL5count-(LPC0_1+4))
	movt	r2, :upper16:(__ZL5count-(LPC0_1+4))
LPC0_1:
	add	r2, pc
	str	r1, [r2]
	cbz	r0, LBB0_3 @ 是 ARM 汇编指令，表示 "Compare and Branch on Zero"。这条指令会检查寄存器 r0 的值是否为零。如果 r0 的值为零，程序将跳转到标签 LBB03 所在的位置继续执行。如果 r0 的值不为零，程序将继续执行下一条指令。
@ %bb.2:                                @   in Loop: Header=BB0_1 Depth=1
	bl	__Z5func1v
	b	LBB0_1
LBB0_3:
	movs	r0, #0
	add	sp, #4
	pop	{r7, pc}
                                        @ -- End function
	.globl	__Z5func1v                      @ -- Begin function _Z5func1v
	.p2align	1
	.code	16                              @ @_Z5func1v
	.thumb_func	__Z5func1v
__Z5func1v:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	movw	r0, :lower16:(__ZZ5func1vE6thingy-(LPC1_0+4))
	movt	r0, :upper16:(__ZZ5func1vE6thingy-(LPC1_0+4))
LPC1_0:
	add	r0, pc
	ldr	r0, [r0]
	adds	r0, #1
	movw	r1, :lower16:(__ZZ5func1vE6thingy-(LPC1_1+4))
	movt	r1, :upper16:(__ZZ5func1vE6thingy-(LPC1_1+4))
LPC1_1:
	add	r1, pc
	str	r0, [r1]
	movw	r0, :lower16:(__ZZ5func1vE6thingy-(LPC1_2+4))
	movt	r0, :upper16:(__ZZ5func1vE6thingy-(LPC1_2+4))
LPC1_2:
	add	r0, pc
	ldr	r1, [r0]
	movw	r0, :lower16:(__ZL5count-(LPC1_3+4))
	movt	r0, :upper16:(__ZL5count-(LPC1_3+4))
LPC1_3:
	add	r0, pc
	ldr	r2, [r0]
	movw	r0, :lower16:(L_.str-(LPC1_4+4))
	movt	r0, :upper16:(L_.str-(LPC1_4+4))
LPC1_4:
	add	r0, pc
	bl	_printf
	pop	{r7, pc}
                                        @ -- End function
	.section	__DATA,__data
	.p2align	2                               @ @_ZL5count
__ZL5count:
	.long	10                              @ 0xa

	.p2align	2                               @ @_ZZ5func1vE6thingy
__ZZ5func1vE6thingy:
	.long	5                               @ 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	" thingy \344\270\272 %d \357\274\214 count \344\270\272 %d\n"

.subsections_via_symbols
