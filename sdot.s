	.arch armv8-a
	.file	"sdot.c"
	.text
	.align	2
	.global	sdot
	.type	sdot, %function
sdot:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	wzr, [sp, 40]
	str	wzr, [sp, 44]
	b	.L2
.L3:
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	ldr	s1, [sp, 40]
	fadd	s0, s1, s0
	str	s0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L3
	ldr	s0, [sp, 40]
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	sdot, .-sdot
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
