SECTION .data
msg: db "MALWARE",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	mov ebx,msg
	mov eax,7
process:
    add byte [ebx],32   ; inc by 32
	inc ebx
	dec eax
	jnz process
	nop
	mov eax,1
	mov ebx,0
	int 80H
