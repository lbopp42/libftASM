%define MACH_SYSCALL(nb)	0x2000000 | nb

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	test rdi, rdi
	jz _ft_puts.null
	push rdi
	call _ft_strlen
	pop rsi
	mov rdi, 1
	mov rdx, rax
	mov rax, MACH_SYSCALL(4)
	syscall
	push 10
	mov rdi, 1
	mov rdx, 1
	mov rsi, rsp
	mov rax, MACH_SYSCALL(4)
	syscall
	mov rsp, rbp
	pop	rbp
	ret
.null:
	mov rdi, 1
	mov rdx, 7
	lea rsi, [rel null]
	mov rax, MACH_SYSCALL(4)
	syscall
	mov rax, 0
	mov rsp, rbp
	pop	rbp
	ret

section .data
	null: db "(null)", 10
