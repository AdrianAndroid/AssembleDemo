	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #480
	stp	x28, x27, [sp, #448]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #464]            ; 16-byte Folded Spill
	add	x29, sp, #464
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	wzr, [sp, #28]
	sub	x0, x29, #228
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_strcpy
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x8, #50
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_strcpy
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x8, #100
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_strcpy
	mov	w8, #7343
	movk	w8, #99, lsl #16
	stur	w8, [x29, #-28]
	add	x0, sp, #32
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_strcpy
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, x8, #50
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_strcpy
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, x8, #100
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	_strcpy
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	w9, #7636
	movk	w9, #99, lsl #16
	str	w9, [sp, #232]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, #50
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, #100
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-28]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #50
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x8, x8, #100
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #232]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	b.eq	LBB0_2
	b	LBB0_1
LBB0_1:
	bl	___stack_chk_fail
LBB0_2:
	mov	w0, #0
	ldp	x29, x30, [sp, #464]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #448]            ; 16-byte Folded Reload
	add	sp, sp, #480
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"C Programming"

l_.str.1:                               ; @.str.1
	.asciz	"Nuha Ali"

l_.str.2:                               ; @.str.2
	.asciz	"C Programming Tutorial"

l_.str.3:                               ; @.str.3
	.asciz	"Telecom Billing"

l_.str.4:                               ; @.str.4
	.asciz	"Zara Ali"

l_.str.5:                               ; @.str.5
	.asciz	"Telecom Billing Tutorial"

l_.str.6:                               ; @.str.6
	.asciz	"Book 1 title : %s\n"

l_.str.7:                               ; @.str.7
	.asciz	"Book 1 author : %s\n"

l_.str.8:                               ; @.str.8
	.asciz	"Book 1 subject : %s\n"

l_.str.9:                               ; @.str.9
	.asciz	"Book 1 book_id : %d\n"

l_.str.10:                              ; @.str.10
	.asciz	"Book 2 title : %s\n"

l_.str.11:                              ; @.str.11
	.asciz	"Book 2 author : %s\n"

l_.str.12:                              ; @.str.12
	.asciz	"Book 2 subject : %s\n"

l_.str.13:                              ; @.str.13
	.asciz	"Book 2 book_id : %d\n"

.subsections_via_symbols
