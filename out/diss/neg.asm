SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	mov eax,42
	neg eax
	neg ebx
	neg ecx
	add eax,42
	mov eax,07FFFFFFFH
	inc eax
	nop
	mov eax,1
	mov ebx,0
	int 80H
