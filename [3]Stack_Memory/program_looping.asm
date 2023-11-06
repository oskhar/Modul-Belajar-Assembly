global _start

section .text
_start:
	mov esp, 4
	mov [esp], byte "T"
	mov [esp+1], byte "e"
	
	mov ecx, 2

looping:
	mov [esp+ecx], byte "s"

	inc ecx
	cmp ecx, 30
	jl looping

	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 31
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
