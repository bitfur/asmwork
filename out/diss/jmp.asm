SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	mov eax,5
l1:	dec eax
	jmp l1
	nop
	mov eax,1
	mov ebx,0
	int 80H
