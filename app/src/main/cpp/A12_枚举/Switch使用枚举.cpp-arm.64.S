	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	x9, sp
	sub	x8, x29, #8
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	subs	w8, w8, #1
	b.eq	LBB0_3
	b	LBB0_1
LBB0_1:
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	subs	w8, w8, #2
	b.eq	LBB0_4
	b	LBB0_2
LBB0_2:
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	subs	w8, w8, #3
	b.eq	LBB0_5
	b	LBB0_6
LBB0_3:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_4:
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_5:
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_6:
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\350\257\267\350\276\223\345\205\245\344\275\240\345\226\234\346\254\242\347\232\204\351\242\234\350\211\262: (1. red, 2. green, 3. blue): "

l_.str.1:                               ; @.str.1
	.asciz	"%u"

l_.str.2:                               ; @.str.2
	.asciz	"RED"

l_.str.3:                               ; @.str.3
	.asciz	"GREEN"

l_.str.4:                               ; @.str.4
	.asciz	"BLUE"

l_.str.5:                               ; @.str.5
	.asciz	"DEFAULT"

.subsections_via_symbols
