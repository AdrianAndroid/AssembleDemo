	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
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
	str	wzr, [sp, #28]
	adrp	x8, l___const.main.names@PAGE
	add	x8, x8, l___const.main.names@PAGEOFF
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	q0, [x8, #16]
	str	q0, [sp, #48]
	str	wzr, [sp, #24]
	str	wzr, [sp, #24]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #4
	b.ge	LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldrsw	x9, [sp, #24]
	add	x8, sp, #32
	ldr	x8, [x8, x9, lsl #3]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
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
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Zara Ali"

l_.str.1:                               ; @.str.1
	.asciz	"Hina Ali"

l_.str.2:                               ; @.str.2
	.asciz	"Nuha Ali"

l_.str.3:                               ; @.str.3
	.asciz	"Sara Ali"

	.section	__DATA,__const
	.p2align	3                               ; @__const.main.names
l___const.main.names:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3

	.section	__TEXT,__cstring,cstring_literals
l_.str.4:                               ; @.str.4
	.asciz	"Value of names[%d] = %s\n"

.subsections_via_symbols
