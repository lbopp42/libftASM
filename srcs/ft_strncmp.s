section .text
	global	_ft_strncmp

_ft_strncmp:
	mov		rcx, rdx
.while:
	cmp		rcx, 0
	je		_ft_strncmp.end
	xor		rbx, rbx
	mov		bl, [rsi]
	cmp		[rdi], bl
	jne		_ft_strncmp.result
	cmp		byte [rdi], 0
	je		_ft_strncmp.result
	cmp		byte [rsi], 0
	je		_ft_strncmp.result
	inc		rsi
	inc		rdi
	dec		rcx
	jmp		_ft_strncmp.while
.result:
	xor		rax, rax
	xor		rcx, rcx
	mov		al, byte [rdi]
	mov		cl, byte [rsi]
	sub		rax, rcx
	ret
.end:
	xor		rax, rax
	ret
