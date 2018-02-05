section .text
	global start
	global _main

start:
	call _main
	ret

_main:
	mov rax, 0x2000001
	mov rdi, 5
	syscall
	leave
	ret
