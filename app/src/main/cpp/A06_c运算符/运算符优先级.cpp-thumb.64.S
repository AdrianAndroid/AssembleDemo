	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	mov	w8, #20
	stur	w8, [x29, #-8]
	mov	w8, #10
	stur	w8, [x29, #-12]
	mov	w8, #15
	stur	w8, [x29, #-16]
	mov	w8, #5
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	add	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-20]
	sdiv	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w9, [sp, #24]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	add	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-20]
	sdiv	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w9, [sp, #24]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	add	w8, w8, w9
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-20]
	sdiv	w9, w9, w10
	mul	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w9, [sp, #24]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	ldur	w10, [x29, #-20]
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w9, [sp, #24]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"(a + b) * c / d \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"((a + b) * c) / d \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"(a + b) * (c / d) \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"a + (b * c) / d \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
