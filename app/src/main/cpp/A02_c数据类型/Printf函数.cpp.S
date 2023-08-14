	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 10, 99, 99	sdk_version 16, 2
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	3         @ p2align 3 将后续的代码对齐到 2^3 = 8 字节的边界上
	.code	16            @ .code 16 指定了使用 Thumb 指令集
	.thumb_func	_main
_main:
@ %bb.0:
	push	{r4, r7, lr}
	add	r7, sp, #4
	sub	sp, #52
	mov	r4, sp     @ 这段代码的作用是为函数创建一个栈帧，并为局部变量分配空间。
				   @ 栈帧是用来存储函数的局部变量和返回地址的内存区域。
				   @ 通过保存寄存器的值和调整栈指针，可以在函数执行期间正确地管理局部变量和函数调用的返回。
	bfc	r4, #0, #3 @ 用来清除或修改寄存器中的特定位。
	mov	sp, r4
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_0+4))
		@ 这是一个 "Move Word" 指令，它将 L___stack_chk_guard$non_lazy_ptr-(LPC0_0+4) 表达式的低 16 位的结果移动到寄存器 r0 中。
		@ 这里的 L___stack_chk_guard$non_lazy_ptr 是一个符号，可能是一个变量或函数的地址，LPC0_0 是一个标签，代表某个地址，4 是一个常数。
		@ 这个指令通常用于加载地址或常数到寄存器中。
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_0+4))
		@ 这条指令的作用是加载 L___stack_chk_guard$non_lazy_ptr-(LPC0_0+4) 的高 16 位到寄存器 r0 的高 16 位。
LPC0_0:
	add	r0, pc
	ldr	r0, [r0] @ 从内存地址 r0 中加载一个值到寄存器 r0
	ldr	r0, [r0] @ 再次取出
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_1+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]      @ 实现间接寻址
	str	r0, [sp, #48] @ 将寄存器 r0 的值存储到内存地址 sp + 48 中
	movs	r0, #0    @ Move and Set flags, 通常用于清零寄存器或设置寄存器的值
	str	r0, [sp, #24] 
	movs	r0, #65
	strb.w	r0, [sp, #23]
	add	r0, sp, #28
	movw	r1, :lower16:(l___const.main.str-(LPC0_2+4))
	movt	r1, :upper16:(l___const.main.str-(LPC0_2+4))
LPC0_2:
	add	r1, pc
	movs	r2, #20
	bl	_memcpy
	vldr	s0, LCPI0_1    @ 从内存中加载单精度浮点数到浮点寄存器。
	vstr	s0, [sp, #16]  @ 将浮点寄存器中的值存储到内存中。
	movs	r0, #150       @ 将一个立即数（即常数）或寄存器的值移动到另一个寄存器，并更新状态寄存器的标志位。
	str	r0, [sp, #12]      @ 将寄存器中的值存储到内存中。
	vldr	d16, LCPI0_0
	vstr	d16, [sp]
	ldrsb.w	r1, [sp, #23]  @ 从内存中加载一个符号扩展的字节到寄存器。
	movw	r0, :lower16:(L_.str-(LPC0_3+4))
	movt	r0, :upper16:(L_.str-(LPC0_3+4)) @ 用于加载 32 位的地址或常数到寄存器中。
LPC0_3:
	add	r0, pc
	bl	_printf
	add	r1, sp, #28
	movw	r0, :lower16:(L_.str.1-(LPC0_4+4))
	movt	r0, :upper16:(L_.str.1-(LPC0_4+4))
LPC0_4:
	add	r0, pc
	bl	_printf
	vldr	s0, [sp, #16]
	vcvt.f64.f32	d16, s0
	movw	r0, :lower16:(L_.str.2-(LPC0_5+4))
	movt	r0, :upper16:(L_.str.2-(LPC0_5+4))
LPC0_5:
	add	r0, pc
	vmov	r1, r2, d16
	bl	_printf
	ldr	r1, [sp, #12]
	movw	r0, :lower16:(L_.str.3-(LPC0_6+4))
	movt	r0, :upper16:(L_.str.3-(LPC0_6+4))
LPC0_6:
	add	r0, pc
	bl	_printf
	vldr	d16, [sp]
	movw	r0, :lower16:(L_.str.4-(LPC0_7+4))
	movt	r0, :upper16:(L_.str.4-(LPC0_7+4))
LPC0_7:
	add	r0, pc
	vmov	r1, r2, d16
	bl	_printf
	ldr	r1, [sp, #12]
	movw	r0, :lower16:(L_.str.5-(LPC0_8+4))
	movt	r0, :upper16:(L_.str.5-(LPC0_8+4))
LPC0_8:
	add	r0, pc
	bl	_printf
	ldr	r1, [sp, #12]
	movw	r0, :lower16:(L_.str.6-(LPC0_9+4))
	movt	r0, :upper16:(L_.str.6-(LPC0_9+4))
LPC0_9:
	add	r0, pc
	bl	_printf
	movw	r0, :lower16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_10+4))
	movt	r0, :upper16:(L___stack_chk_guard$non_lazy_ptr-(LPC0_10+4))
LPC0_10:
	add	r0, pc
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [sp, #48]
	cmp	r0, r1 
	bne	LBB0_2
@ %bb.1:
	movs	r0, #0
	subs	r4, r7, #4
	mov	sp, r4
	pop	{r4, r7, pc} @ 这段代码是 ARM 汇编指令，用于函数的返回过程。
					 @ 1. movs r0, #0：将寄存器 r0 的值设置为 0。在 C 语言中,main 函数的返回值通常存储在 r0 寄存器中，所以这条指令实际上是设置 main 函数的返回值为 0。
					 @ 2. subs r4, r7, #4：将寄存器 r7 的值减去 4，然后将结果存储在寄存器 r4 中。这是在调整栈指针，为 pop 指令做准备。
					 @ 3. mov sp, r4：将寄存器 r4 的值移动到栈指针 sp 中。这是在调整栈指针，为 pop 指令做准备。
					 @ 4. pop {r4, r7, pc}：从栈中弹出值，依次恢复寄存器 r4、r7 和程序计数器 pc 的值。这是函数返回的关键步骤，pc 寄存器存储的是返回地址，恢复 pc 寄存器的值实际上是跳转到返回地址，完成函数的返回。
LBB0_2:
	bl	___stack_chk_fail
	trap
	.p2align	3
@ %bb.3:
	.data_region
LCPI0_0:
	.long	3489300151                      @ double 20.123456000000001
	.long	1077157786
LCPI0_1:
	.long	0x4123be77                      @ float 10.2340002
	.end_data_region
                                        @ -- End function
	.section	__TEXT,__const
l___const.main.str:                     @ @__const.main.str
	.asciz	"www.runoob.com\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"\345\255\227\347\254\246\344\270\272 %c \n"

L_.str.1:                               @ @.str.1
	.asciz	"\345\255\227\347\254\246\344\270\262\344\270\272 %s \n"

L_.str.2:                               @ @.str.2
	.asciz	"\346\265\256\347\202\271\346\225\260\344\270\272 %f \n"

L_.str.3:                               @ @.str.3
	.asciz	"\346\225\264\346\225\260\344\270\272 %d\n"

L_.str.4:                               @ @.str.4
	.asciz	"\345\217\214\347\262\276\345\272\246\345\200\274\344\270\272 %lf \n"

L_.str.5:                               @ @.str.5
	.asciz	"\345\205\253\350\277\233\345\210\266\345\200\274\344\270\272 %o \n"

L_.str.6:                               @ @.str.6
	.asciz	"\345\215\201\345\205\255\350\277\233\345\210\266\345\200\274\344\270\272 %x \n"

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
