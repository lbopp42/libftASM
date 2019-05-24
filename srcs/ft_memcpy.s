section .text
	global _ft_memcpy

_ft_memcpy:
	push	rbp			; {	Can be replace by enter 0, 0
	mov		rbp, rsp	; {
	mov		rcx, rdx
	push	rdi
	rep		movsb
	pop		rax
	mov		rsp, rbp	;{ Can be replace by leave
	pop		rbp			;{
	ret
