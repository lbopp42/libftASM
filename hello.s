section .data
hello:
		.string db "Hello World!", 10
		.len equ $ - hello.string

section .text
		global start
		global _main

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rdi, 1
	lea rsi, [rel hello.string]
	mov rdx, hello.len
	mov rdx, rdx
	mov rax, 0x2000004
	syscall
	leave
	ret
