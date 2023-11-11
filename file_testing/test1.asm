global _start

section .data
	pangkat db 6, 0x0a

section .text
_start:
	mov ebx, 1
	mov ecx, 6

perulangan:
	add ebx, ebx
	
	dec ecx
	cmp ecx, 0
	jg perulangan
	
	mov eax, 1
	int 0x80
