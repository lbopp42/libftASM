%define MACH_SYSCALL(nb)	0x2000000 | nb

section .text
	global _ft_cat
	extern _ft_strlen
	extern _ft_bzero

_ft_cat:
	push	rbp			; {	Can be replace by enter 0, 0
	mov		rbp, rsp	; {
	push	rdi
.while:
	lea		rdi, [rel buffer]
	mov		rsi, 1025
	call	_ft_bzero
	pop		rdi
	push	rdi
	lea		rsi, [rel buffer]
	mov		rdx, 1024
	mov		rax, MACH_SYSCALL(3)
	syscall
	jc		_ft_cat.error
	push	rax
	lea		rdi, [rel buffer]
	mov		rdi, 1
	lea		rsi, [rel buffer]
	mov		rdx, 1025
	mov		rax, MACH_SYSCALL(4)
	syscall
	jc		_ft_cat.error
	pop		rax
	cmp		rax, 0
	jg		_ft_cat.while
	pop		rdi
	mov		rsp, rbp	; { Can be replace by leave
	pop		rbp			; {
	ret
.error:
	mov		rdi, 1
	lea		rsi, [rel msg]
	mov		rdx, 5
	mov		rax, MACH_SYSCALL(4)
	syscall
	mov		rsp, rbp	; { Can be replace by leave
	pop		rbp			; {
	ret

section .data
	msg: db "Error"

section .bss
	buffer: resb 1024
