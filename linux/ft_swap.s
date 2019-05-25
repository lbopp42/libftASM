section .text
	global ft_swap

ft_swap:
        push    rbp
        mov     rbp, rsp
        mov     QWORD [rbp-8], rdi
        mov     QWORD [rbp-16], rsi
        mov     rax, QWORD [rbp-8]
        mov     edx, DWORD [rax]
        mov     rax, QWORD [rbp-16]
        mov     eax, DWORD [rax]
        xor     edx, eax
        mov     rax, QWORD [rbp-8]
        mov     DWORD [rax], edx
        mov     rax, QWORD [rbp-16]
        mov     edx, DWORD [rax]
        mov     rax, QWORD [rbp-8]
        mov     eax, DWORD [rax]
        xor     edx, eax
        mov     rax, QWORD [rbp-16]
        mov     DWORD [rax], edx
        mov     rax, QWORD [rbp-8]
        mov     edx, DWORD [rax]
        mov     rax, QWORD [rbp-16]
        mov     eax, DWORD [rax]
        xor     edx, eax
        mov     rax, QWORD [rbp-8]
        mov     DWORD [rax], edx
        nop
        pop     rbp
        ret
