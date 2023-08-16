	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	wzr, [x29, #-28]
	adrp	x9, l___const.main.var@PAGE
	add	x9, x9, l___const.main.var@PAGEOFF
	ldr	x10, [x9]
	sub	x8, x29, #24
	stur	x10, [x29, #-24]
	ldr	w9, [x9, #8]
	stur	w9, [x29, #-16]
	str	x8, [sp, #24]
	str	wzr, [sp, #32]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #3
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #32]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	x8, [sp, #24]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #32]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldr	x8, [sp, #24]
	ldr	w9, [x8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #24]
	add	x8, x8, #4
	str	x8, [sp, #24]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB0_1
LBB0_4:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_6
	b	LBB0_5
LBB0_5:
	bl	___stack_chk_fail
LBB0_6:
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	2                               ; @__const.main.var
l___const.main.var:
	.long	10                              ; 0xa
	.long	100                             ; 0x64
	.long	200                             ; 0xc8

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\345\255\230\345\202\250\345\234\260\345\235\200\357\274\232var[%d] = %p\n"

l_.str.1:                               ; @.str.1
	.asciz	"\345\255\230\345\202\250\345\200\274\357\274\232var[%d] = %d\n"

.subsections_via_symbols
