section .text
	global _ft_swap

_ft_swap:
	mov	eax, [rsi]
	xor eax, [rdi]
	xor [rdi], eax
	xor [rsi], eax
	ret
