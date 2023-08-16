	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 16, 2	sdk_version 16, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #4
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldurb	w8, [x29, #-4]
	mov	w9, #-2
	str	w9, [sp, #36]                   ; 4-byte Folded Spill
	and	w8, w8, #0xfffffffe
	mov	w9, #1
	stur	w9, [x29, #-32]                 ; 4-byte Folded Spill
	orr	w8, w8, w9
	sturb	w8, [x29, #-4]
	ldurb	w8, [x29, #-4]
	mov	w10, #-15
	str	w10, [sp, #40]                  ; 4-byte Folded Spill
	and	w8, w8, #0xfffffff1
	orr	w8, w8, #0xe
	sturb	w8, [x29, #-4]
	ldurb	w8, [x29, #-4]
	mov	w10, #15
	stur	w10, [x29, #-36]                ; 4-byte Folded Spill
	and	w8, w8, #0xf
	orr	w8, w8, #0xfffffff0
	sturb	w8, [x29, #-4]
	ldurb	w8, [x29, #-4]
	and	w12, w8, w9
	ldurb	w8, [x29, #-4]
	lsr	w8, w8, #1
	mov	w9, #7
	stur	w9, [x29, #-28]                 ; 4-byte Folded Spill
	and	w11, w8, #0x7
	ldurb	w8, [x29, #-4]
	lsr	w10, w8, #4
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x12
	and	x8, x8, #0xff
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x11
	and	x8, x8, #0xff
	str	x8, [x9, #8]
                                        ; implicit-def: $x8
	mov	x8, x10
	and	x8, x8, #0xff
	str	x8, [x9, #16]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	stur	x0, [x29, #-24]                 ; 8-byte Folded Spill
	bl	_printf
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w12, [sp, #36]                  ; 4-byte Folded Reload
	ldr	w14, [sp, #40]                  ; 4-byte Folded Reload
	ldur	w13, [x29, #-36]                ; 4-byte Folded Reload
	ldur	w10, [x29, #-32]                ; 4-byte Folded Reload
	ldur	w8, [x29, #-28]                 ; 4-byte Folded Reload
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	stur	x9, [x29, #-16]
	ldur	x11, [x29, #-16]
	ldrb	w9, [x11]
	and	w9, w9, w12
	strb	w9, [x11]
	ldur	x11, [x29, #-16]
	ldrb	w9, [x11]
	and	w9, w8, w9, lsr #1
	and	w9, w9, #0xff
	and	w12, w9, #0x3
	ldrb	w9, [x11]
	and	w12, w12, w8
	and	w9, w9, w14
	orr	w9, w9, w12, lsl #1
	strb	w9, [x11]
	ldur	x11, [x29, #-16]
	ldrb	w9, [x11]
	lsr	w9, w9, #4
	and	w9, w9, #0xff
	orr	w12, w9, #0x1
	ldrb	w9, [x11]
	and	w12, w12, w13
	and	w9, w9, w13
	orr	w9, w9, w12, lsl #4
	strb	w9, [x11]
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
	and	w12, w9, w10
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
	and	w11, w8, w9, lsr #1
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	lsr	w10, w8, #4
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x12
	and	x8, x8, #0xff
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x11
	and	x8, x8, #0xff
	str	x8, [x9, #8]
                                        ; implicit-def: $x8
	mov	x8, x10
	and	x8, x8, #0xff
	str	x8, [x9, #16]
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d,%d,%d\n"

.subsections_via_symbols
