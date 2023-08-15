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
	mov	w8, #100
	stur	w8, [x29, #-8]
	mov	w8, #200
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #100
	b.ne	LBB0_4
	b	LBB0_1
LBB0_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-12]
	subs	w8, w8, #200
	b.ne	LBB0_3
	b	LBB0_2
LBB0_2:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_3
LBB0_3:
	b	LBB0_4
LBB0_4:
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-12]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\350\277\231\346\230\257\345\244\226\351\203\250 switch \347\232\204\344\270\200\351\203\250\345\210\206\n"

l_.str.1:                               ; @.str.1
	.asciz	"\350\277\231\346\230\257\345\206\205\351\203\250 switch \347\232\204\344\270\200\351\203\250\345\210\206\n"

l_.str.2:                               ; @.str.2
	.asciz	"a \347\232\204\345\207\206\347\241\256\345\200\274\346\230\257 %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"b \347\232\204\345\207\206\347\241\256\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
