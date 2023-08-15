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
	mov	w8, #100
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #10
	b.ne	LBB0_2
	b	LBB0_1
LBB0_1:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	b	LBB0_9
LBB0_2:
	ldr	w8, [sp, #8]
	subs	w8, w8, #20
	b.ne	LBB0_4
	b	LBB0_3
LBB0_3:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_8
LBB0_4:
	ldr	w8, [sp, #8]
	subs	w8, w8, #30
	b.ne	LBB0_6
	b	LBB0_5
LBB0_5:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_6:
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_7:
	b	LBB0_8
LBB0_8:
	b	LBB0_9
LBB0_9:
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"a \347\232\204\345\200\274\346\230\257 10\n"

l_.str.1:                               ; @.str.1
	.asciz	"a \347\232\204\345\200\274\346\230\257 20\n"

l_.str.2:                               ; @.str.2
	.asciz	"a \347\232\204\345\200\274\346\230\257 30\n"

l_.str.3:                               ; @.str.3
	.asciz	"\346\262\241\346\234\211\345\214\271\351\205\215\347\232\204\345\200\274\n"

l_.str.4:                               ; @.str.4
	.asciz	"a \347\232\204\345\207\206\347\241\256\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
