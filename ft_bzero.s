section .text
	global _ft_bzero

_ft_bzero:
	push rbp
	mov rbp, rsp
	mov rcx, rdi
.while:
	cmp rsi, 0
	je _ft_bzero.finish
	mov byte [rcx], 0 
	inc rcx
	sub rsi, 1
	jmp _ft_bzero.while
.finish:
 	leave
	ret
