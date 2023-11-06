global _start

section .data
	message db "Hello world oskhar aowkoakwoka!", 0x0a
	lenOfMessage equ $-message

section .text
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, message
	mov edx, lenOfMessage
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
