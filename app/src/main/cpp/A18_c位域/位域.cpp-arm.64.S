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
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	ldur	w8, [x29, #-8]
	and	w8, w8, #0xfffffffe
	orr	w8, w8, #0x1
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	and	w8, w8, #0xfffffffd
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	and	w8, w8, #0xfffffffb
	orr	w8, w8, #0x4
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	and	w8, w8, #0xfffffff7
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	and	w8, w8, #0xffffff0f
	orr	w8, w8, #0x70
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	and	w8, w8, #0xfffe00ff
	orr	w8, w8, #0xff00
	stur	w8, [x29, #-8]
	ldur	w8, [x29, #-8]
	and	w10, w8, #0x1
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #1
	and	w10, w8, #0x1
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #2
	and	w10, w8, #0x1
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #3
	and	w10, w8, #0x1
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #4
	and	w10, w8, #0xf
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-8]
	lsr	w8, w8, #8
	and	w10, w8, #0x1ff
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-12]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"f1: %u\n"

l_.str.1:                               ; @.str.1
	.asciz	"f2: %u\n"

l_.str.2:                               ; @.str.2
	.asciz	"f3: %u\n"

l_.str.3:                               ; @.str.3
	.asciz	"f4: %u\n"

l_.str.4:                               ; @.str.4
	.asciz	"type: %u\n"

l_.str.5:                               ; @.str.5
	.asciz	"my_int: %u\n"

.subsections_via_symbols
