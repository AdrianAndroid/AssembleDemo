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
	mov	w8, #5
	str	w8, [sp, #8]
	mov	w8, #20
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	cbz	w8, LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	w8, [sp, #4]
	cbz	w8, LBB0_3
	b	LBB0_2
LBB0_2:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	b	LBB0_3
LBB0_3:
	ldr	w8, [sp, #8]
	cbnz	w8, LBB0_5
	b	LBB0_4
LBB0_4:
	ldr	w8, [sp, #4]
	cbz	w8, LBB0_6
	b	LBB0_5
LBB0_5:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_6
LBB0_6:
	str	wzr, [sp, #8]
	mov	w8, #10
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	cbz	w8, LBB0_9
	b	LBB0_7
LBB0_7:
	ldr	w8, [sp, #4]
	cbz	w8, LBB0_9
	b	LBB0_8
LBB0_8:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	b	LBB0_10
LBB0_9:
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	b	LBB0_10
LBB0_10:
	ldr	w8, [sp, #8]
	cbz	w8, LBB0_12
	b	LBB0_11
LBB0_11:
	ldr	w8, [sp, #4]
	cbnz	w8, LBB0_13
	b	LBB0_12
LBB0_12:
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	b	LBB0_13
LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Line 1 - true  \346\235\241\344\273\266\344\270\272\347\234\237\n"

l_.str.1:                               ; @.str.1
	.asciz	"Line 2 - false \346\235\241\344\273\266\344\270\272\347\234\237\n"

l_.str.2:                               ; @.str.2
	.asciz	"Line 3 - true  \346\235\241\344\273\266\344\270\272\347\234\237\n"

l_.str.3:                               ; @.str.3
	.asciz	"Line 3 - false \346\235\241\344\273\266\344\270\272\345\201\207\n"

l_.str.4:                               ; @.str.4
	.asciz	"Line 4 - true \346\235\241\344\273\266\344\270\272\347\234\237\n"

.subsections_via_symbols
