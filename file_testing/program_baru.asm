global _start

section .data
    pesanOverflow db "Print terjump", 0x0a
    panjangPesanOverflow equ $-pesanOverflow

section .text
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, pesanOverflow
    mov edx, panjangPesanOverflow
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80
