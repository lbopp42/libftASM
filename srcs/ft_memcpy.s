section .text
	global _ft_memcpy

_ft_memcpy:
	push	rbp			; {	Can be replace by enter 0, 0
	mov		rbp, rsp	; {
	mov		rcx, rdx
	rep		movsb
	mov		rsp, rbp	;{ Can be replace by leave
	pop		rbp			;{
	ret
