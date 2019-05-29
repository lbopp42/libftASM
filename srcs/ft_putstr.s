%define MACH_SYSCALL(nb)	0x2000000 | nb

section .text
	global _ft_putstr
	extern _ft_strlen

_ft_putstr:
	push	rbp
	mov		rbp, rsp
	push	rdi
	call	_ft_strlen
	;mov		rdx, rax
	;mov		rdi, 1
	pop		rsi
	;mov		rax, MACH_SYSCALL(4)
	;syscall
	mov		rsp, rbp
	pop		rbp
	ret
