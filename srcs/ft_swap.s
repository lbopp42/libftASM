section .text
	global _ft_swap

_ft_swap:
	push	rbp
	mov		rbp, rsp
	mov		QWORD [rbp-24], rdi
    mov		QWORD [rbp-32], rsi
    mov		rax, QWORD [rbp-24]
    mov		eax, DWORD [rax]
    mov		DWORD [rbp-4], eax
    mov		rax, QWORD [rbp-32]
    mov		edx, DWORD [rax]
    mov		rax, QWORD [rbp-24]
    mov		DWORD [rax], edx
    mov		rax, QWORD [rbp-32]
    mov		edx, DWORD [rbp-4]
    mov		DWORD [rax], edx
	pop		rbp
	ret
