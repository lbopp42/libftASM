section .text
		global _ft_isdigit

_ft_isdigit:
	push rbp
	mov rbp, rsp
	mov rcx, rdi
	sub rcx, '0'
	cmp rcx, 10
	jb _ft_isdigit.success
	xor rax, rax
	leave
	ret
.success:
	mov rax, 1
	leave
	ret
