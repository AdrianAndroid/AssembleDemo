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
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	adrp	x9, l___const.main.site@PAGE
	add	x9, x9, l___const.main.site@PAGEOFF
	ldr	w10, [x9]
	sub	x8, x29, #12
	stur	w10, [x29, #-12]
	ldur	w9, [x9, #3]
	stur	w9, [x8, #3]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z5main2v                      ; -- Begin function _Z5main2v
	.p2align	2
__Z5main2v:                             ; @_Z5main2v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x9, l___const._Z5main2v.site@PAGE
	add	x9, x9, l___const._Z5main2v.site@PAGEOFF
	ldr	w10, [x9]
	add	x8, sp, #8
	str	w10, [sp, #8]
	ldur	w9, [x9, #3]
	stur	w9, [x8, #3]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l___const.main.site:                    ; @__const.main.site
	.asciz	"RUNOOB"

l_.str:                                 ; @.str
	.asciz	"\350\217\234\351\270\237\346\225\231\347\250\213: %s\n"

l___const._Z5main2v.site:               ; @__const._Z5main2v.site
	.asciz	"RUNOOB"

.subsections_via_symbols
