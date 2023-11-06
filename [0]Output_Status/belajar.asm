global _start
_start:
	mov eax, 1
	mov ebx, 2
	mul 5
	int 0x80
