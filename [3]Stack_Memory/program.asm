global _start

section .text
_start:
	sub esp, 4		; menyisikan 4 byte pada stack
	mov [esp], byte 'H'	; mengisi karakter pada bit ke 0
	mov [esp+1], byte 'e'	; mengisi karakter pada bit ke 1
	mov [esp+2], byte 'y'	; mengisi karakter pada bit ke 2
	mov [esp+3], byte '!'	; mengisi karakter pada bit ke 3
	mov [esp+4], byte ' '	; mengisi karakter pada bit ke 4
	mov [esp+5], byte 't'	; mengisi karakter pada bit ke 5
	mov [esp+6], byte 'e'	; mengisi karakter pada bit ke 6
	mov [esp+7], byte 's'	; mengisi karakter pada bit ke 7

	mov eax, 4		; melakukan system call write
	mov ebx, 1		; mengatur standar output
	mov ecx, esp		; mengatur string output
	mov edx, 8		; mengatur panjang ouput
	int 0x80		; systemcall

	mov eax, 1		; melakukan system call exit
	mov ebx, 0		; mengatur kode error sebagai nol
	int 0x80		; systemcall
