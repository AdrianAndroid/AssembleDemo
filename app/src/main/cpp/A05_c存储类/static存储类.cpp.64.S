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
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	adrp	x10, __ZL5count@PAGE
	ldr	w8, [x10, __ZL5count@PAGEOFF]
	subs	w9, w8, #1
	str	w9, [x10, __ZL5count@PAGEOFF]
	cbz	w8, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	bl	__Z5func1v
	b	LBB0_1
LBB0_3:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z5func1v                      ; -- Begin function _Z5func1v
	.p2align	2
__Z5func1v:                             ; @_Z5func1v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZZ5func1vE6thingy@PAGE
	ldr	w9, [x8, __ZZ5func1vE6thingy@PAGEOFF]
	add	w9, w9, #1
	str	w9, [x8, __ZZ5func1vE6thingy@PAGEOFF]
	ldr	w8, [x8, __ZZ5func1vE6thingy@PAGEOFF]
                                        ; implicit-def: $x10
	mov	x10, x8
	adrp	x8, __ZL5count@PAGE
	ldr	w9, [x8, __ZL5count@PAGEOFF]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.p2align	2                               ; @_ZL5count
__ZL5count:
	.long	10                              ; 0xa

	.p2align	2                               ; @_ZZ5func1vE6thingy
__ZZ5func1vE6thingy:
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	" thingy \344\270\272 %d \357\274\214 count \344\270\272 %d\n"

.subsections_via_symbols
