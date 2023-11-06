global _start

section .data
	pesan db "Hallo semuanya", 0x0a ; deklarasi variabel pesan
	panjangPesan equ $-pesan	; mengambil panjang dari variabel pesan

section .text

_start:
	mov ebx, 1	; angka awal
	mov ecx, 7	; jumlah iterasi

label:
	; program utama
  	add ebx, ebx; ebx + ebx

	; program untuk mengecek kondisi sebelum perulangan
	dec ecx		; ecx - 1
	cmp ecx, 0    	; bandingkan ecx dengan 0
	jg label      	; memanggil label jika ecx lebih dari 0

	; keluar dari program
	mov eax, 1	; system call untuk exit
	int 0x80
