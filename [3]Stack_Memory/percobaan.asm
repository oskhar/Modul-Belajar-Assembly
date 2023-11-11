global _start

section .data
	sapa 10

section .text
_start:
	mov eax, 1
	mov ebx, sapa
	int 0x80

