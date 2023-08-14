	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function main
lCPI0_0:
	.quad	0x47efffffe0000000              ; double 3.4028234663852886E+38
lCPI0_1:
	.quad	0x3810000000000000              ; double 1.1754943508222875E-38
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
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
	mov	w8, #0
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	mov	x9, sp
	mov	x8, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	x8, sp
	adrp	x9, lCPI0_1@PAGE
	ldr	d0, [x9, lCPI0_1@PAGEOFF]
	str	d0, [x8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	x8, sp
	adrp	x9, lCPI0_0@PAGE
	ldr	d0, [x9, lCPI0_0@PAGEOFF]
	str	d0, [x8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	x9, sp
	mov	x8, #6
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldr	w0, [sp, #8]                    ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"float \345\255\230\345\202\250\346\234\200\345\244\247\345\255\227\350\212\202\346\225\260 : %lu \n"

l_.str.1:                               ; @.str.1
	.asciz	"float \346\234\200\345\260\217\345\200\274: %E\n"

l_.str.2:                               ; @.str.2
	.asciz	"float \346\234\200\345\244\247\345\200\274: %E\n"

l_.str.3:                               ; @.str.3
	.asciz	"\347\262\276\345\272\246\345\200\274: %d\n"

.subsections_via_symbols
