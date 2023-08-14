	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	__Z9addtwonumv                  ; -- Begin function _Z9addtwonumv
	.p2align	2
__Z9addtwonumv:                         ; @_Z9addtwonumv
	.cfi_startproc
; %bb.0:
	adrp	x8, _x@GOTPAGE
	ldr	x8, [x8, _x@GOTPAGEOFF]
	ldr	w8, [x8]
	adrp	x9, _y@GOTPAGE
	ldr	x9, [x9, _y@GOTPAGEOFF]
	ldr	w9, [x9]
	add	w0, w8, w9
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
