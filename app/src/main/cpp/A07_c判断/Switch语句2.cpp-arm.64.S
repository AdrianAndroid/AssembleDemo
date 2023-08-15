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
	mov	w8, #10
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	subs	w8, w8, #5
	b.eq	LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #10
	b.eq	LBB0_4
	b	LBB0_2
LBB0_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #15
	b.eq	LBB0_5
	b	LBB0_6
LBB0_3:
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_4:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_5:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_6:
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	b	LBB0_7
LBB0_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"iphone\357\274\201\357\274\201\n"

l_.str.1:                               ; @.str.1
	.asciz	"car\357\274\201\357\274\201\n"

l_.str.2:                               ; @.str.2
	.asciz	"building\357\274\201\357\274\201\n"

l_.str.3:                               ; @.str.3
	.asciz	"sorry\357\274\201\357\274\201\n"

.subsections_via_symbols
