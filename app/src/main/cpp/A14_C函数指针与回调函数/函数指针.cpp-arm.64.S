	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	__Z3maxii                       ; -- Begin function _Z3maxii
	.p2align	2
__Z3maxii:                              ; @_Z3maxii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.le	LBB0_2
	b	LBB0_1
LBB0_1:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_3
LBB0_2:
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_3
LBB0_3:
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
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
	mov	w8, #0
	stur	w8, [x29, #-36]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	adrp	x8, __Z3maxii@PAGE
	add	x8, x8, __Z3maxii@PAGEOFF
	stur	x8, [x29, #-16]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	x9, sp
	sub	x8, x29, #20
	str	x8, [x9]
	sub	x8, x29, #24
	str	x8, [x9, #8]
	sub	x8, x29, #28
	str	x8, [x9, #16]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	w0, [x29, #-20]
	ldur	w1, [x29, #-24]
	blr	x8
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldur	w1, [x29, #-28]
	blr	x8
	stur	w0, [x29, #-32]
	ldur	w9, [x29, #-32]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-36]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"\350\257\267\350\276\223\345\205\245\344\270\211\344\270\252\346\225\260\345\255\227:"

l_.str.1:                               ; @.str.1
	.asciz	"%d %d %d"

l_.str.2:                               ; @.str.2
	.asciz	"\346\234\200\345\244\247\347\232\204\346\225\260\345\255\227\346\230\257: %d\n"

.subsections_via_symbols
