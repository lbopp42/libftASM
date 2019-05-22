section .text
		global _ft_isascii

_ft_isascii:
	push rbp
	mov rbp, rsp
	mov rcx, rdi
	cmp rcx, 128
	jb _ft_isascii.success
	xor rax, rax
	leave
	ret
.success:
	mov rax, 1
	leave
	ret
