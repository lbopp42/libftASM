%define MACH_SYSCALL(nb)	0x2000000 | nb

section .data
	buffer: times 100 db 0

section .text
	global _ft_cat
	extern _ft_strlen
	extern _ft_bzero

_ft_cat:
	push	rbp			; {	Can be replace by enter 0, 0
	mov		rbp, rsp	; {
.while:
	push	rdi
	mov		rdi, buffer
	mov		rsi, 100
	call	_ft_bzero
	pop		rdi
	mov		rsi, buffer
	mov		rdx, 99
	mov		rax, MACH_SYSCALL(3)
	syscall
	push	rax
	mov		rdi, buffer
	call	_ft_strlen
	mov		rdi, 1
	mov		rsi, buffer
	mov		rdx, rax
	mov		rax, MACH_SYSCALL(4)
	syscall
	pop		rax
	cmp		rax, 0
	jg		_ft_cat.while
	mov		rsp, rbp	; { Can be replace by leave
	pop		rbp			; {
	ret
