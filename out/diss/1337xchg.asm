SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	mov ax,1337h
	xchg al,ah
	mov ebx,0
	int 80H
