section .text
		global _ft_isprint

_ft_isprint:
	push rbp
	mov rbp, rsp
	mov rcx, rdi
	sub rcx, ' '
	cmp rcx, 95
	jb _ft_isprint.success
	xor rax, rax
	leave
	ret
.success:
	mov rax, 1
	leave
	ret
