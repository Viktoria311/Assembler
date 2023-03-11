	.text
	.data
x:
	.long	5
y:
	.long	3
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	endbr64
	pushq	%rbp
	movq	%rsp, %rbp
	movl	x(%rip), %edx
	movl	y(%rip), %eax
	addl	%edx, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	ret

