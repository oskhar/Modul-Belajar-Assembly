section .text
global _start

_start:
    ; Inisialisasi ecx dan eax untuk looping
    mov ecx, 0
    mov eax, 2
    
    mov [esp], byte 'T'
    mov [esp+1], byte 'e' 

looping:
    ; Cek jika ecx lebih besar atau sama dengan panjang pesan
    cmp ecx, 10
    jge exit

    ; Push karakter 's' ke stack
    mov [esp + eax], byte 's'

    ; Tambahkan ecx dan eax untuk mengakses karakter berikutnya
    inc ecx
    inc eax

    ; Lanjutkan loop
    jmp looping

exit:
    ; Menulis karakter-karakter 's' dari stack ke stdout
    mov ecx, esp
    mov ebx, 1
    mov eax, 4
    mov edx, 12
    int 0x80

    ; Keluar program
    mov eax, 1
    mov ebx, 0
    int 0x80

