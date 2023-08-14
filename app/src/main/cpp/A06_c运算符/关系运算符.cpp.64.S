	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	mov	w8, #21
	str	w8, [sp, #8]
	mov	w8, #10
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ne	LBB0_2
	b	LBB0_1
LBB0_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	b	LBB0_3
LBB0_2:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_3
LBB0_3:
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ge	LBB0_5
	b	LBB0_4
LBB0_4:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	b	LBB0_6
LBB0_5:
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	b	LBB0_6
LBB0_6:
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.le	LBB0_8
	b	LBB0_7
LBB0_7:
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	b	LBB0_9
LBB0_8:
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	b	LBB0_9
LBB0_9:
	mov	w8, #5
	str	w8, [sp, #8]
	mov	w8, #20
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.gt	LBB0_11
	b	LBB0_10
LBB0_10:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	b	LBB0_11
LBB0_11:
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.lt	LBB0_13
	b	LBB0_12
LBB0_12:
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	b	LBB0_13
LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Line 1 - a \347\255\211\344\272\216 b\n"

l_.str.1:                               ; @.str.1
	.asciz	"Line 1 - a \344\270\215\347\255\211\344\272\216 b\n"

l_.str.2:                               ; @.str.2
	.asciz	"Line 2 - a \345\260\217\344\272\216 b\n"

l_.str.3:                               ; @.str.3
	.asciz	"Line 2 - a \344\270\215\345\260\217\344\272\216 b\n"

l_.str.4:                               ; @.str.4
	.asciz	"Line 3 - a \345\244\247\344\272\216 b\n"

l_.str.5:                               ; @.str.5
	.asciz	"Line 3 - a \344\270\215\345\244\247\344\272\216 b\n"

l_.str.6:                               ; @.str.6
	.asciz	"Line 4 - a \345\260\217\344\272\216\346\210\226\347\255\211\344\272\216 b\n"

l_.str.7:                               ; @.str.7
	.asciz	"Line 5 - b \345\244\247\344\272\216\346\210\226\347\255\211\344\272\216 a\n"

.subsections_via_symbols
