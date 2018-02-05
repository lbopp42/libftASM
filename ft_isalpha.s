section .text
		global _ft_isalpha

_ft_isalpha:
	push rbp
	mov rbp, rsp
	mov rcx, rdi
	sub rcx, 'A'
	cmp rcx, 26
	jb _ft_isalpha.alpha
	sub rdi, 'a'
	cmp rdi, 26
	jb _ft_isalpha.alpha
	xor rax, rax
	leave
	ret
.alpha:
	mov rax, 1
	leave
	ret
