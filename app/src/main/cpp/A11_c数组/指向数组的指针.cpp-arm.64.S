	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x4049000000000000              ; double 50
lCPI0_1:
	.quad	0x400b333333333333              ; double 3.3999999999999999
lCPI0_2:
	.quad	0x408f400000000000              ; double 1000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	mov	w1, #0
	str	wzr, [sp, #44]
	add	x0, sp, #48
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x2, #40
	bl	_memset
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x9, lCPI0_2@PAGE
	ldr	d0, [x9, lCPI0_2@PAGEOFF]
	str	d0, [sp, #48]
	fmov	d0, #2.00000000
	str	d0, [sp, #56]
	adrp	x9, lCPI0_1@PAGE
	ldr	d0, [x9, lCPI0_1@PAGEOFF]
	str	d0, [sp, #64]
	fmov	d0, #17.00000000
	str	d0, [sp, #72]
	adrp	x9, lCPI0_0@PAGE
	ldr	d0, [x9, lCPI0_0@PAGEOFF]
	str	d0, [sp, #80]
	str	x8, [sp, #32]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	str	wzr, [sp, #28]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #5
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
                                        ; implicit-def: $x9
	mov	x9, x8
	ldr	x8, [sp, #32]
	ldrsw	x10, [sp, #28]
	ldr	d0, [x8, x10, lsl #3]
	mov	x8, sp
	str	x9, [x8]
	str	d0, [x8, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB0_1
LBB0_4:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	str	wzr, [sp, #28]
	b	LBB0_5
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #5
	b.ge	LBB0_8
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #28]
                                        ; implicit-def: $x9
	mov	x9, x8
	ldrsw	x10, [sp, #28]
	add	x8, sp, #48
	ldr	d0, [x8, x10, lsl #3]
	mov	x8, sp
	str	x9, [x8]
	str	d0, [x8, #8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB0_5
LBB0_8:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_10
	b	LBB0_9
LBB0_9:
	bl	___stack_chk_fail
LBB0_10:
	mov	w0, #0
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\344\275\277\347\224\250\346\214\207\351\222\210\347\232\204\346\225\260\347\273\204\345\200\274\n"

l_.str.1:                               ; @.str.1
	.asciz	"*(p + %d) : %f\n"

l_.str.2:                               ; @.str.2
	.asciz	"\344\275\277\347\224\250 balance \344\275\234\344\270\272\345\234\260\345\235\200\347\232\204\346\225\260\347\273\204\345\200\274\n"

l_.str.3:                               ; @.str.3
	.asciz	"*(balance + %d) : %f\n"

.subsections_via_symbols
