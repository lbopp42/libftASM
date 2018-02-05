section .text
	global _ft_memset

_ft_memset:
	push		rbp			; {	Can be replace by enter 0, 0
	mov			rbp, rsp	; {
	mov			rax, rsi
	mov			rcx, rdx
	rep			stosb
	mov			rax, rdi
	mov			rsp, rbp	;{ Can be replace by leave
	pop			rbp			;{
	ret
