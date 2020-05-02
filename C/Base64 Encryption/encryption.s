	.file	"encryption.c"
	.text
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\0"
	.text
	.globl	_base64Encoder
	.def	_base64Encoder;	.scl	2;	.type	32;	.endef
_base64Encoder:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-129(%ebp), %eax
	movl	$LC0, %ebx
	movl	$65, %edx
	movl	(%ebx), %ecx
	movl	%ecx, (%eax)
	movl	-4(%ebx,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	leal	4(%eax), %edi
	andl	$-4, %edi
	subl	%edi, %eax
	subl	%eax, %ebx
	addl	%eax, %edx
	andl	$-4, %edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	$1000, (%esp)
	call	_malloc
	movl	%eax, -60(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -48(%ebp)
	jmp	L2
L10:
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -32(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	L3
L5:
	sall	$8, -40(%ebp)
	movl	-52(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	orl	%eax, -40(%ebp)
	addl	$1, -44(%ebp)
	addl	$1, -52(%ebp)
L3:
	movl	-52(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	L4
	movl	-48(%ebp), %eax
	addl	$2, %eax
	cmpl	%eax, -52(%ebp)
	jle	L5
L4:
	movl	-44(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -36(%ebp)
	jmp	L6
L9:
	cmpl	$5, -32(%ebp)
	jle	L7
	movl	-32(%ebp), %eax
	subl	$6, %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$63, %eax
	movl	%eax, -28(%ebp)
	subl	$6, -32(%ebp)
	jmp	L8
L7:
	movl	$6, %eax
	subl	-32(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	andl	$63, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -32(%ebp)
L8:
	movl	-56(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -56(%ebp)
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	addl	%eax, %edx
	leal	-129(%ebp), %ecx
	movl	-28(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
L6:
	cmpl	$0, -32(%ebp)
	jne	L9
	addl	$3, -48(%ebp)
L2:
	movl	-48(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L10
	movl	$1, -48(%ebp)
	jmp	L11
L12:
	movl	-56(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -56(%ebp)
	movl	%eax, %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movb	$61, (%eax)
	addl	$1, -48(%ebp)
L11:
	movl	-48(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jle	L12
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-60(%ebp), %eax
	addl	$140, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "Input string is : %s\12\0"
LC2:
	.ascii "Encoded string is : %s\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$1953719636, 20(%esp)
	movl	$6778473, 24(%esp)
	movl	$8, 28(%esp)
	subl	$1, 28(%esp)
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	leal	20(%esp), %eax
	movl	%eax, (%esp)
	call	_base64Encoder
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
