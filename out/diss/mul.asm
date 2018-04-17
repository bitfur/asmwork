SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	; code here
	mov eax,447
	mov ebx,1739
	mul ebx
	mov eax,0FFFFFFFFh
	mov ebx,03B72h
	mul ebx
	nop
	mov eax,1
	mov ebx,0
	int 80H
