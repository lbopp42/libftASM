section .text
		global _ft_toupper

_ft_toupper:
	push rbp
	mov rbp, rsp
	mov rcx, rdi
	mov rax, rdi
	sub rcx, 'a'
	cmp rcx, 26
	jb _ft_toupper.change
	leave
	ret
.change:
	sub rax, 32
	leave
	ret
