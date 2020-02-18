	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_sum
	.p2align	4, 0x90
_sum:
	.cfi_startproc
	addl	%esi, %edi
	movl	%edi, %eax
	retq
	.cfi_endproc


.subsections_via_symbols
