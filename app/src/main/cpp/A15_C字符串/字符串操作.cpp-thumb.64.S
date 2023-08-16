	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #36]
	adrp	x8, l___const.main.str1@PAGE
	add	x8, x8, l___const.main.str1@PAGEOFF
	ldr	x9, [x8]
	sub	x1, x29, #24
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	stur	x9, [x29, #-24]
	ldur	x8, [x8, #6]
	stur	x8, [x1, #6]
	adrp	x8, l___const.main.str2@PAGE
	add	x8, x8, l___const.main.str2@PAGEOFF
	ldr	x10, [x8]
	sub	x9, x29, #40
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	stur	x10, [x29, #-40]
	ldur	x8, [x8, #6]
	stur	x8, [x9, #6]
	add	x0, sp, #42
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	_strcpy
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	_strcat
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	_strlen
	mov	x8, x0
	str	w8, [sp, #32]
	ldr	w9, [sp, #32]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	x9, [x29, #-8]
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
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
l___const.main.str1:                    ; @__const.main.str1
	.asciz	"runoob\000\000\000\000\000\000\000"

l___const.main.str2:                    ; @__const.main.str2
	.asciz	"google\000\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"strcpy( str3, str1) :  %s\n"

l_.str.1:                               ; @.str.1
	.asciz	"strcat( str1, str2):   %s\n"

l_.str.2:                               ; @.str.2
	.asciz	"strlen(str1) :  %d\n"

.subsections_via_symbols
