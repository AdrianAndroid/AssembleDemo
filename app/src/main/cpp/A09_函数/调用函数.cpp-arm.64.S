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
	mov	w8, #100
	stur	w8, [x29, #-8]
	mov	w8, #200
	stur	w8, [x29, #-12]
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	__Z3maxii
	str	w0, [sp, #16]
	ldr	w9, [sp, #16]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	w0, [sp, #12]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
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
	b.le	LBB1_2
	b	LBB1_1
LBB1_1:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]
	b	LBB1_3
LBB1_2:
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]
	b	LBB1_3
LBB1_3:
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Max value is : %d\n"

.subsections_via_symbols
