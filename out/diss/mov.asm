SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	mov ax,067FEh
	mov bx,ax
	mov cx,1337h
	mov cl,bh
	mov ch,bl

	mov ebx,0
	int 80H
