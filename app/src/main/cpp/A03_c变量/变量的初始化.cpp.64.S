	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	__Z9addtwonumv                  ; -- Begin function _Z9addtwonumv
	.p2align	2
__Z9addtwonumv:                         ; @_Z9addtwonumv
	.cfi_startproc
; %bb.0:
	adrp	x8, _x@PAGE
	mov	w9, #1
	str	w9, [x8, _x@PAGEOFF]
	adrp	x9, _y@PAGE
	mov	w10, #2
	str	w10, [x9, _y@PAGEOFF]
	ldr	w8, [x8, _x@PAGEOFF]
	ldr	w9, [x9, _y@PAGEOFF]
	add	w0, w8, w9
	ret
	.cfi_endproc
                                        ; -- End function
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
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	bl	__Z9addtwonumv
	stur	w0, [x29, #-8]
	ldur	w9, [x29, #-8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-12]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_x                              ; @x
.zerofill __DATA,__common,_x,4,2
	.globl	_y                              ; @y
.zerofill __DATA,__common,_y,4,2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"result \344\270\272: %d"

.subsections_via_symbols
