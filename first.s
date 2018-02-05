; /usr/local/bin/nasm -f macho64 64.asm && ld -macosx_version_min 10.7.0 -lSystem -o 64 64.o && ./64



section .text
	global start
	global _main

start:
	call _main
	ret

_main:
    mov     rax, 0x2000004 ; write
    mov     rdi, 1 ; stdout   rdi
    mov     rsi, msg ;   rsi
    mov     rdx, hello.len
    syscall

    mov     rax, 0x2000001 ; exit
    mov     rdi, 0
    syscall


section .data
	msg: db "Hello world, I'm a boss or not :p!", 10, "SUITE"
	hello:
		.len equ $ - msg
