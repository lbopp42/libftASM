section .text
	global _ft_strlen

_ft_strlen:
	push	rbp			; {	Can be replace by enter 0, 0
	mov		rbp, rsp	; {
	cld
	mov		rcx, -1
	xor		al, al
	repne	scasb
	mov		rax, -2
	sub		rax, rcx
	mov		rsp, rbp	;{ Can be replace by leave
	pop		rbp			;{
	ret
