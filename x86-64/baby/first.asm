BITS 64

GLOBAL _start

_start:
        MOV RBX, 50000000000
        MOV RAX, 1
        int 0x80
