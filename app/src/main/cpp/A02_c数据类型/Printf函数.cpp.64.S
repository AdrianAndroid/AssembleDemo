	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x40341f9acffa7eb7              ; double 20.123456000000001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	wzr, [x29, #-36]
	mov	w8, #65
	sturb	w8, [x29, #-37]
	adrp	x8, l___const.main.str@PAGE
	add	x8, x8, l___const.main.str@PAGEOFF
	ldr	q0, [x8]
	sub	x9, x29, #32
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	stur	q0, [x29, #-32]
	ldr	w8, [x8, #16]
	stur	w8, [x29, #-16]
	mov	w8, #48759
	movk	w8, #16675, lsl #16
	fmov	s0, w8
	str	s0, [sp, #36]
	mov	w8, #150
	str	w8, [sp, #32]
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	str	d0, [sp, #24]
	ldursb	w10, [x29, #-37]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	s0, [sp, #36]
	fcvt	d0, s0
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #32]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldr	d0, [sp, #24]
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #32]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #32]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_2
	b	LBB0_1
LBB0_1:
	bl	___stack_chk_fail
LBB0_2:
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
l___const.main.str:                     ; @__const.main.str
	.asciz	"www.runoob.com\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\345\255\227\347\254\246\344\270\272 %c \n"

l_.str.1:                               ; @.str.1
	.asciz	"\345\255\227\347\254\246\344\270\262\344\270\272 %s \n"

l_.str.2:                               ; @.str.2
	.asciz	"\346\265\256\347\202\271\346\225\260\344\270\272 %f \n"

l_.str.3:                               ; @.str.3
	.asciz	"\346\225\264\346\225\260\344\270\272 %d\n"

l_.str.4:                               ; @.str.4
	.asciz	"\345\217\214\347\262\276\345\272\246\345\200\274\344\270\272 %lf \n"

l_.str.5:                               ; @.str.5
	.asciz	"\345\205\253\350\277\233\345\210\266\345\200\274\344\270\272 %o \n"

l_.str.6:                               ; @.str.6
	.asciz	"\345\215\201\345\205\255\350\277\233\345\210\266\345\200\274\344\270\272 %x \n"

.subsections_via_symbols
