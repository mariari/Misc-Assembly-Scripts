BITS 64

global _start

section .data
        msg db "hello, world", 0x0a
        len equ $ - msg

section .text                   ; code segment


_start: mov ecx, msg
        mov edx, len
        ;; eax 4 = sys write
        mov eax, 4
        mov ebx, 1
        int 0x80
        mov eax, 1
        mov ebx, 0
        int 0x80
