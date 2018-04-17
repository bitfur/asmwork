SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	; movsx test
	mov eax,0
	mov ebx,0
	mov al,-42
	movsx ebx,al
	mov ax,-42
	mov ebx,0
	movsx ebx,ax
	mov al,-42
	movsx bx,al
	nop
	mov eax,1
	mov ebx,0
	int 80H
