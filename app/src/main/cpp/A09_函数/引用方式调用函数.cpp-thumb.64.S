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
	sub	x8, x29, #8
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	w8, #100
	stur	w8, [x29, #-8]
	sub	x8, x29, #12
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	mov	w8, #200
	stur	w8, [x29, #-12]
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-12]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__Z4swapPiS_
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
	ldur	w0, [x29, #-16]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z4swapPiS_                    ; -- Begin function _Z4swapPiS_
	.p2align	2
__Z4swapPiS_:                           ; @_Z4swapPiS_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\344\272\244\346\215\242\345\211\215\357\274\214a \347\232\204\345\200\274\357\274\232 %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"\344\272\244\346\215\242\345\211\215\357\274\214b \347\232\204\345\200\274\357\274\232 %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"\344\272\244\346\215\242\345\220\216\357\274\214a \347\232\204\345\200\274\357\274\232 %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"\344\272\244\346\215\242\345\220\216\357\274\214b \347\232\204\345\200\274\357\274\232 %d\n"

.subsections_via_symbols
