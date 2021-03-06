	.file	"PAInsertionSort.c"
	.text
	.section	.rodata
.LC0:
	.string	"Number to insert: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Your array contains %d\n"
	.text
	.globl	createArray
	.type	createArray, @function
createArray:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	toSort.2363(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -4(%rbp)
.L2:
	cmpl	$4, -4(%rbp)
	jle	.L3
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	toSort.2363(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L4:
	cmpl	$4, -4(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar@PLT
	leaq	toSort.2363(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	createArray, .-createArray
	.section	.rodata
	.align 8
.LC3:
	.string	"The values we're getting back: %p"
.LC4:
	.string	"*p + %d): %d\n"
.LC5:
	.string	"\nSorted list:"
.LC6:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, %eax
	call	createArray
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -20(%rbp)
	jmp	.L8
.L9:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -20(%rbp)
.L8:
	cmpl	$4, -20(%rbp)
	jle	.L9
	movl	$10, %edi
	call	putchar@PLT
	movl	$1, -20(%rbp)
	jmp	.L10
.L14:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L11
.L13:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	subl	$1, -16(%rbp)
.L11:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L12
	cmpl	$0, -16(%rbp)
	jns	.L13
.L12:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -20(%rbp)
.L10:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L14
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$0, -20(%rbp)
	jmp	.L15
.L16:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -20(%rbp)
.L15:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L16
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	toSort.2363
	.comm	toSort.2363,20,16
	.ident	"GCC: (GNU) 8.2.1 20181127"
	.section	.note.GNU-stack,"",@progbits
