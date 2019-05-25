section .text
	global ft_swap

ft_swap:
	mov     eax, [rdi]
        xor     eax, [rsi]
        mov     [rdi], eax
        xor     eax, [rsi]
        mov     [rsi], eax
        xor     [rdi], eax
        ret
