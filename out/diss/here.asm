SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	; code here
	mov eax,$
	nop
	mov eax,1
	mov ebx,0
	int 80H
