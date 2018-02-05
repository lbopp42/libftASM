section .text
		global _ft_isalnum

_ft_isalnum:
	push rbp
	mov rbp, rsp
	mov rcx, rdi
	sub rcx, '0'
	cmp rcx, 10
	jb _ft_isalnum.success
	mov rcx, rdi
	sub rcx, 'A'
	cmp rcx, 26
	jb _ft_isalnum.success
	mov rcx, rdi
	sub rcx, 'a'
	cmp rcx, 26
	jb _ft_isalnum.success
	xor rax, rax
	leave
	ret
.success:
	mov rax, 1
	leave
	ret
