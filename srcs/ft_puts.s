%define MACH_SYSCALL(nb)	0x2000000 | nb

section .text
	global _ft_puts
	extern _ft_strlen

section .data
	nl: db 10

_ft_puts:
	push rbp
	mov rbp, rsp
	push rdi
	call _ft_strlen
	;pop rsi
	;mov rdi, 1
	;mov rdx, rax
	;mov rax, MACH_SYSCALL(4)
	;syscall
	mov rdi, 1
	mov rdx, 1
	mov rsi, nl
	mov rax, MACH_SYSCALL(4)
	syscall
	mov rsp, rbp
	pop	rbp
	ret
