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
	mov	w8, #10
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	add	w9, w8, #1
	stur	w9, [x29, #-8]
	stur	w8, [x29, #-4]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-4]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	subs	w9, w8, #1
	stur	w9, [x29, #-8]
	stur	w8, [x29, #-4]
	ldur	w9, [x29, #-4]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	ldur	w9, [x29, #-4]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	stur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	ldur	w9, [x29, #-4]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\345\205\210\350\265\213\345\200\274\345\220\216\350\277\220\347\256\227\357\274\232\n"

l_.str.1:                               ; @.str.1
	.asciz	"Line 1 - c \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"Line 2 - a \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"Line 3 - c \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.4:                               ; @.str.4
	.asciz	"Line 4 - a \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.5:                               ; @.str.5
	.asciz	"\345\205\210\350\277\220\347\256\227\345\220\216\350\265\213\345\200\274\357\274\232\n"

l_.str.6:                               ; @.str.6
	.asciz	"Line 5 - c \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.7:                               ; @.str.7
	.asciz	"Line 6 - a \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.8:                               ; @.str.8
	.asciz	"Line 7 - c \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.9:                               ; @.str.9
	.asciz	"Line 8 - a \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
