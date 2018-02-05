section .text
	global _ft_strcat

_ft_strcat:
	push rbp
	mov rbp, rsp
	mov rdx, rdi
.go_end_s1:
	cmp byte [rdi], 0
	je _ft_strcat.fill_s1
	inc rdi
	jmp _ft_strcat.go_end_s1
.fill_s1:
	cmp byte [rsi], 0
	je _ft_strcat.end
	mov rcx, [rsi]
	mov [rdi], rcx
	inc rsi
	inc rdi
	jmp _ft_strcat.fill_s1
.end:
	mov rdi, 0
	mov rax, rdx
	leave
	ret
