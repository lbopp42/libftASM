section .text:
	global _ft_putchar
	global ft_putchar

ft_putchar:
	call _ft_putchar
	ret

_ft_putchar:
	push	rbp
	mov	rbp, rsp
	push	rdi
	mov	rdi, 1
	mov	rdx, 1
	mov	rsi, rsp
	mov	rax, MACH_SYSCALL(4)
	syscall
	mov	rsp, rbp
	pop	rbp
	ret
