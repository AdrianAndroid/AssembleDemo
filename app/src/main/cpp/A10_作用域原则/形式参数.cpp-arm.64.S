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
	mov	w8, #0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	mov	w8, #10
	stur	w8, [x29, #-8]
	mov	w8, #20
	stur	w8, [x29, #-12]
	str	wzr, [sp, #16]
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	__Z3sumii
	str	w0, [sp, #16]
	ldr	w9, [sp, #16]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z3sumii                       ; -- Begin function _Z3sumii
	.p2align	2
__Z3sumii:                              ; @_Z3sumii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w9, [x29, #-4]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_a                              ; @a
	.p2align	2
_a:
	.long	20                              ; 0x14

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"value of a in main() = %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"value of c in main() = %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"value of a in sum() = %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"value of b in sum() = %d\n"

.subsections_via_symbols
