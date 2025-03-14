	.arch armv8-a
	.file	"sscal.c"
	.text
	.align	2
	.global	sscal
	.type	sscal, %function
sscal:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	x2, [sp, 16]
	str	w3, [sp, 12]
	str	wzr, [sp, 44]
	b	.L2
.L3:
	ldr	s0, [sp, 24]
	scvtf	s1, s0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	s0, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	fmul	s0, s1, s0
	str	s0, [x0]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L3
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sscal, .-sscal
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
