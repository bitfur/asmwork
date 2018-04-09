SECTION .data
msg: db "Test String",10,0
msg_len: equ $-msg
SECTION .bss
SECTION .text
global _start
_start:
    nop                 ; gdb
    mov eax,4           ; sys_write
    mov ebx,1           ; file desc
    mov ecx,msg
    mov edx,msg_len
    int 80H
    mov eax,1
    mov ebx,0
    int 80H
