	.file	"parse.c"
	.text
	.globl	DECODE_RESULT_OK
	.section	.rodata
	.align 4
	.type	DECODE_RESULT_OK, @object
	.size	DECODE_RESULT_OK, 4
DECODE_RESULT_OK:
	.zero	4
	.globl	DECODE_RESULT_FILE_ERROR
	.align 4
	.type	DECODE_RESULT_FILE_ERROR, @object
	.size	DECODE_RESULT_FILE_ERROR, 4
DECODE_RESULT_FILE_ERROR:
	.long	1
	.globl	DECODE_RESULT_SYNTAX_ERROR
	.align 4
	.type	DECODE_RESULT_SYNTAX_ERROR, @object
	.size	DECODE_RESULT_SYNTAX_ERROR, 4
DECODE_RESULT_SYNTAX_ERROR:
	.long	2
.LC0:
	.string	"r"
	.text
	.globl	decode_file
	.type	decode_file, @function
decode_file:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	-120(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movq	-72(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	M_INSTRUCTION_SIZE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	imull	$1000, %eax, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	M_INSTRUCTION_SIZE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	OPER_NONE@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	REGISTER_NONE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movw	$-1, -34(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$1, -52(%rbp)
	jmp	.L4
.L30:
	movq	OPER_NONE@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L5
	cmpl	$35, -40(%rbp)
	jne	.L5
.L6:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movl	%eax, -40(%rbp)
	cmpl	$10, -40(%rbp)
	je	.L5
	cmpl	$-1, -40(%rbp)
	jne	.L6
.L5:
	cmpl	$32, -40(%rbp)
	jne	.L7
	cmpl	$0, -44(%rbp)
	je	.L7
	jmp	.L4
.L7:
	cmpl	$32, -40(%rbp)
	je	.L8
	cmpl	$10, -40(%rbp)
	je	.L8
	movl	$0, -52(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L9
	movl	$0, -44(%rbp)
.L9:
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
	jmp	.L4
.L8:
	movq	OPER_NONE@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L10
	cmpl	$0, -52(%rbp)
	je	.L11
	jmp	.L4
.L11:
	movl	$0, -56(%rbp)
	jmp	.L12
.L15:
	movq	ALL_OPERS@GOTPCREL(%rip), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	ALL_OPERS@GOTPCREL(%rip), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L13
	movq	ALL_OPERS@GOTPCREL(%rip), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	jmp	.L14
.L13:
	addl	$1, -56(%rbp)
.L12:
	movl	-56(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L15
.L14:
	movq	OPER_NONE@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	movsbl	%al, %edx
	movq	M_INSTRUCTION_SIZE@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	M_OPCODE_SIZE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movw	%ax, -34(%rbp)
	jmp	.L18
.L10:
	movq	OPER_NEW@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L19
	cmpl	$0, -48(%rbp)
	jne	.L21
	movq	-80(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movb	%al, -97(%rbp)
	movzbl	-97(%rbp), %eax
	orw	%ax, -34(%rbp)
	movzwl	-34(%rbp), %edx
	movq	M_OPCODE_SIZE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movw	%ax, -34(%rbp)
	jmp	.L21
.L19:
	movq	OPER_CP@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L22
	movq	OPER_PUSH@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L22
	movq	OPER_POP@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L22
	movq	OPER_LOAD@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L22
	movq	OPER_SAVE@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L22
	movq	OPER_ADD@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	je	.L22
	movq	OPER_MULT@GOTPCREL(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L21
.L22:
	movl	$0, -60(%rbp)
	jmp	.L23
.L26:
	movq	ALL_REGISTRS@GOTPCREL(%rip), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movzbl	(%rax), %edx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L24
	movq	ALL_REGISTRS@GOTPCREL(%rip), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	jmp	.L25
.L24:
	addl	$1, -60(%rbp)
.L23:
	movl	-60(%rbp), %eax
	cmpl	$8, %eax
	jbe	.L26
.L25:
	movq	REGISTER_NONE@GOTPCREL(%rip), %rax
	cmpq	%rax, -32(%rbp)
	je	.L32
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	movw	%ax, -82(%rbp)
	movzwl	-82(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	subl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	M_OPCODE_SIZE@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	imull	%ecx, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movw	%ax, -82(%rbp)
	movzwl	-82(%rbp), %eax
	orw	%ax, -34(%rbp)
.L21:
	addl	$1, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jl	.L18
	movq	-8(%rbp), %rax
	movzwl	-34(%rbp), %edx
	movw	%dx, (%rax)
	movw	$-1, -34(%rbp)
	addq	$2, -8(%rbp)
	movq	OPER_NONE@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -48(%rbp)
	movl	$1, -52(%rbp)
.L18:
	movl	$1, -44(%rbp)
	jmp	.L28
.L29:
	subq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$32, (%rax)
.L28:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	ja	.L29
.L4:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movl	%eax, -40(%rbp)
	cmpl	$-1, -40(%rbp)
	jne	.L30
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L3
.L31:
	nop
	jmp	.L17
.L32:
	nop
.L17:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	decode_file, .-decode_file
	.ident	"GCC: (GNU) 7.3.1 20180303 (Red Hat 7.3.1-5)"
	.section	.note.GNU-stack,"",@progbits
