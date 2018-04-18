section .bss
	bf resb 1
section .data
section .text
	global _start
_start:
	nop				; gdb
read:
	mov eax,3		; sys_read
	mov ebx,0		; std in
	mov ecx,bf		; addr of buff
	mov edx,1		; 1 char
	
	int 80h			; call sys_read
	cmp eax,0		; sys_read ret val
	je exit			; 0 = EOF
	
	cmp byte [bf],61h	; test 'a'
	jb write			; if < a, not lower
	cmp byte [bf],7Ah	; if > z, not lower
	ja write
	sub byte [bf],20h	; -20h
write:
	mov eax,4		; sys_write
	mov ebx,1		; std out
	mov ecx,bf		; addr of buf
	mov edx,1		; how many bytes
	int 80h			; call
	jmp read		; back to read
exit:
	mov eax,1		; exit syscall
	mov ebx,0		; ret 0
	int 80h			; call
