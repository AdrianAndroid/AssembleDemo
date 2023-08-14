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
	mov	w8, #21
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-4]
	ldr	w8, [sp, #8]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-4]
	ldr	w8, [sp, #8]
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-4]
	ldr	w8, [sp, #8]
	mul	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	w9, [x29, #-4]
	ldr	w8, [sp, #8]
	sdiv	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	mov	w8, #200
	str	w8, [sp, #8]
	ldur	w10, [x29, #-4]
	ldr	w8, [sp, #8]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #8]
	lsl	w8, w8, #2
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #8]
	asr	w8, w8, #2
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #8]
	and	w8, w8, #0x2
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #8]
	eor	w8, w8, #0x2
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	ldr	w8, [sp, #8]
	orr	w8, w8, #0x2
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Line 1 - =  \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"Line 2 - += \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"Line 3 - -= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"Line 4 - *= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.4:                               ; @.str.4
	.asciz	"Line 5 - /= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.5:                               ; @.str.5
	.asciz	"Line 6 - %%= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.6:                               ; @.str.6
	.asciz	"Line 7 - <<= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.7:                               ; @.str.7
	.asciz	"Line 8 - >>= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.8:                               ; @.str.8
	.asciz	"Line 9 - &= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.9:                               ; @.str.9
	.asciz	"Line 10 - ^= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

l_.str.10:                              ; @.str.10
	.asciz	"Line 11 - |= \350\277\220\347\256\227\347\254\246\345\256\236\344\276\213\357\274\214c \347\232\204\345\200\274 = %d\n"

.subsections_via_symbols
