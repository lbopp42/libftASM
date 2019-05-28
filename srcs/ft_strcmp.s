section .text
	global	_ft_strcmp
	extern	_ft_strlen

_ft_strcmp:
	xor		rcx, rcx
.while:
	xor		rbx, rbx
	mov		bl, [rsi]
	cmp		[rdi], bl
	jne		_ft_strcmp.result
	cmp		byte [rdi], 0
	je		_ft_strcmp.result
	cmp		byte [rsi], 0
	je		_ft_strcmp.result
	inc		rsi
	inc		rdi
	jmp		_ft_strcmp.while
.result:
	xor		rax, rax
	xor		rcx, rcx
	mov		al, byte [rdi]
	mov		cl, byte [rsi]
	sub		rax, rcx
	ret
