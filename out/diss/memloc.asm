SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
ws1: dw "CQ"
ds1: dd 'Stop'
SECTION .bss
SECTION .text
global _start
_start:
	nop
	; code here
	mov ax,[ws1]
	mov edx,[ds1]
	nop
	mov eax,1
	mov ebx,0
	int 80H
