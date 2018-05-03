	.file	"util.c"
	.text
	.section	.rodata
.LC0:
	.string	"ERROR"
.LC1:
	.string	""
.LC2:
	.string	"WARN"
.LC3:
	.string	"INFO"
.LC4:
	.string	"%s: %s"
	.text
	.globl	loggy
	.type	loggy, @function
loggy:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L13
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L13:
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.L3
.L12:
	cmpl	$0, -212(%rbp)
	je	.L4
	cmpl	$1, -212(%rbp)
	je	.L5
	cmpl	$2, -212(%rbp)
	jne	.L6
	leaq	.LC0(%rip), %rax
	jmp	.L9
.L6:
	leaq	.LC1(%rip), %rax
	jmp	.L9
.L5:
	leaq	.LC2(%rip), %rax
	jmp	.L9
.L4:
	leaq	.LC3(%rip), %rax
.L9:
	movq	-184(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L10
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L11
.L10:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L11:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.L12
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	loggy, .-loggy
	.ident	"GCC: (GNU) 7.3.1 20180303 (Red Hat 7.3.1-5)"
	.section	.note.GNU-stack,"",@progbits
