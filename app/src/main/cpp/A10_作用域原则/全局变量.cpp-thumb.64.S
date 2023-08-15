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
	stur	w8, [x29, #-16]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	mov	w8, #10
	stur	w8, [x29, #-8]
	mov	w8, #20
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	add	w9, w8, w9
	adrp	x8, _g@PAGE
	str	w9, [x8, _g@PAGEOFF]
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x11
	mov	x11, x9
	ldur	w9, [x29, #-12]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x8, _g@PAGEOFF]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-16]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_g                              ; @g
.zerofill __DATA,__common,_g,4,2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"value of a = %d, b = %d and g = %d\n"

.subsections_via_symbols
