%define MACH_SYSCALL(nb)	0x2000000 | nb

section .text
	global _ft_puts

_ft_puts:
	push rbp
	mov rbp, rsp
	mov rax, MACH_SYSCALL(4)
