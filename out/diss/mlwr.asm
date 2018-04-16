SECTION .data
msg: db "MALWARE",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
	nop
	mov ebx,DAT_PACK_1  ; y?
	mov eax,7           ; funny block size
brain_1:
    add byte [ebx],32   ; inc by 32
	inc ebx             ; brain unfreeze
	dec eax
	jnz brain_1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
    
	mov eax,1
	mov ebx,0
	int 80H
