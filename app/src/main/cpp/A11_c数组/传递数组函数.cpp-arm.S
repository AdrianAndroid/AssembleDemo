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
	sub	sp, sp, #40
	bfc	sp, #0, #3
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_0+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_0+8))
LPC0_0:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_1+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_1+8))
LPC0_1:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	str	r0, [sp, #36]
	movw	r0, #0
	str	r0, [sp, #12]
	add	r0, sp, #16
	movw	r1, :lower16:(l___const.main.balance-(LPC0_2+8))
	movt	r1, :upper16:(l___const.main.balance-(LPC0_2+8))
LPC0_2:
	add	r1, pc, r1
	movw	r2, #20  @ 数组占内存的长度
	bl	_memcpy
	add	r0, sp, #16  @ 第一个参数
	movw	r1, #5   @ 第二个参数
	bl	__Z10getAveragePii
	vmov	d16, r0, r1 @ 这条指令将 ARM 通用寄存器 r0 和 r1 中的值传送到 NEON 寄存器 d16。在 NEON 寄存器中，d16 对应两个连续的 64 位寄存器，因此 r0 中的值会传送到 d16[0]，而 r1 中的值会传送到 d16[1]。
	vstr d16, [sp]      @ 这条指令将 NEON 寄存器 d16 中的数据存储到栈上的位置，栈指针为 sp。这将在栈上分配一个连续的内存区域，并将 d16 中的值存储到该位置。
	vldr d16, [sp]      @ 这条指令从栈上的位置加载数据到 NEON 寄存器 d16 中。它会将栈上的值加载到 d16，以便后续在 NEON 寄存器中进行处理。
	movw	r0, :lower16:(L_.str-(LPC0_3+8))
	movt	r0, :upper16:(L_.str-(LPC0_3+8))
LPC0_3:
	add	r0, pc, r0
	vmov	r1, r2, d16
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_4+8))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_4+8))
LPC0_4:
	ldr	r0, [pc, r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #36]
	cmp	r0, r1
	bne	LBB0_2
@ %bb.1:
	movw	r0, #0
	mov	sp, r7
	pop	{r7, pc}
LBB0_2:
	bl	___stack_chk_fail
	trap
                                        @ -- End function
	.globl	__Z10getAveragePii              @ -- Begin function _Z10getAveragePii
	.p2align	3
	.code	32                              @ @_Z10getAveragePii
__Z10getAveragePii:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #32
	bfc	sp, #0, #3
	str	r0, [sp, #28]
	str	r1, [sp, #24]
	vldr	d16, LCPI1_0
	vstr	d16, [sp]
	movw	r0, #0                      @ double sum = 0;
	str	r0, [sp, #20]                   @ i = 0
LBB1_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #24]
	cmp	r0, r1
	bge	LBB1_4
@ %bb.2:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #20]
	add	r0, r0, r1, lsl #2
	ldr	r0, [r0]
	vmov	s0, r0
	vcvt.f64.s32	d17, s0            @ 这条指令将单精度浮点数寄存器 s0 中的值转换为双精度浮点数，并将结果存储到双精度浮点数寄存器 d17 中。
	vldr	d16, [sp]
	vadd.f64	d16, d16, d17          @ 这条指令将两个双精度浮点数寄存器 d16 和 d17 中的值执行向量加法操作，结果存储到寄存器 d16 中。
	vstr	d16, [sp]
@ %bb.3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	LBB1_1
LBB1_4:
	vldr	d16, [sp]
	vldr	s0, [sp, #24]
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d16, d17
	vstr	d16, [sp, #8]
	vldr	d16, [sp, #8]
	vmov	r0, r1, d16
	mov	sp, r7
	pop	{r7, pc}
	.p2align	3
@ %bb.5:
	.data_region
LCPI1_0:
	.long	0                               @ double 0
	.long	0
	.end_data_region
                                        @ -- End function
	.section	__TEXT,__const
	.p2align	2                               @ @__const.main.balance
l___const.main.balance:
	.long	1000                            @ 0x3e8
	.long	2                               @ 0x2
	.long	3                               @ 0x3
	.long	17                              @ 0x11
	.long	50                              @ 0x32

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\345\271\263\345\235\207\345\200\274\346\230\257\357\274\232 %f "

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
