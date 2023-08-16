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
	movw	r0, :lower16:(_book-(LPC0_0+4))
	movt	r0, :upper16:(_book-(LPC0_0+4))
LPC0_0:
	add	r0, pc
	ldr.w	r9, [r0, #200]
	movw	r0, :lower16:(L_.str-(LPC0_1+4))
	movt	r0, :upper16:(L_.str-(LPC0_1+4))
LPC0_1:
	add	r0, pc
	movw	r1, :lower16:(_book-(LPC0_2+4))
	movt	r1, :upper16:(_book-(LPC0_2+4))
LPC0_2:
	add	r1, pc
	add.w	r2, r1, #50
	add.w	r3, r1, #100
	str.w	r9, [sp]
	bl	_printf
	movs	r0, #0
	add	sp, #4
	pop	{r7, pc}
                                        @ -- End function
	.section	__DATA,__data
	.globl	_book                           @ @book
	.p2align	2
_book:
	.asciz	"C \350\257\255\350\250\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"RUNOOB\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"b\347\274\226\347\250\213\350\257\255\350\250\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	123456                          @ 0x1e240

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 @ @.str
	.asciz	"title : %s\nauthor: %s\nsubject: %s\nbook_id: %d\n"

.subsections_via_symbols
