section .text
		global _ft_tolower

_ft_tolower:
	push rbp
	mov rbp, rsp
	mov rcx, rdi
	mov rax, rdi
	sub rcx, 'A'
	cmp rcx, 26
	jb _ft_tolower.change
	leave
	ret
.change:
	add rax, 32
	leave
	ret
