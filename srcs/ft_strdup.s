section .text
	global _ft_strdup
	global _ft_memcpy
	extern _malloc
	extern _ft_strlen

_ft_strdup:
	push	rbp			; {	Can be replace by enter 0, 0
	mov		rbp, rsp	; {
	push	rdi			; save the old string
	; size calculation
	call	_ft_strlen	; rax have the since of the string
	add		rax, 1
	push	rax
	; malloc initialization
	mov		rdi, rax
	call	_malloc
	pop		rcx			; get size of string + 1
	pop		rsi			; get source string
	; fill the new string
	mov		rdi, rax	; destination
	rep		movsb
	; return the new string
	mov		rsp, rbp	; { Can be replace by leave
	pop		rbp			; {
	ret
