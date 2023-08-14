	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #4
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	mov	w8, #4
	stur	w8, [x29, #-4]
	mov	x9, sp
	mov	x8, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	x9, sp
	mov	x8, #2
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	x9, sp
	mov	x8, #8
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	ldur	w9, [x29, #-4]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-24]
	ldr	w9, [x8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	mov	w8, #10
	stur	w8, [x29, #-4]
	ldur	w10, [x29, #-4]
	mov	w9, #30
	str	w9, [sp, #24]                   ; 4-byte Folded Spill
	mov	w8, #20
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	subs	w10, w10, #1
	csel	w8, w8, w9, eq
	sturh	w8, [x29, #-6]
	ldursh	w10, [x29, #-6]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	_printf
	ldr	w9, [sp, #24]                   ; 4-byte Folded Reload
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	w10, [x29, #-4]
	subs	w10, w10, #10
	csel	w8, w8, w9, eq
	sturh	w8, [x29, #-6]
	ldursh	w10, [x29, #-6]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Line 1 - \345\217\230\351\207\217 a \347\232\204\345\244\247\345\260\217 = %lu\n"

l_.str.1:                               ; @.str.1
	.asciz	"Line 2 - \345\217\230\351\207\217 b \347\232\204\345\244\247\345\260\217 = %lu\n"

l_.str.2:                               ; @.str.2
	.asciz	"Line 3 - \345\217\230\351\207\217 c \347\232\204\345\244\247\345\260\217 = %lu\n"

l_.str.3:                               ; @.str.3
	.asciz	"a \347\232\204\345\200\274\346\230\257 %d\n"

l_.str.4:                               ; @.str.4
	.asciz	"*ptr \346\230\257 %d\n"

l_.str.5:                               ; @.str.5
	.asciz	"b \347\232\204\345\200\274\346\230\257 %d\n"

.subsections_via_symbols
