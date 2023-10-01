# Belajar-Assembly

Repositori ini berisi proyek tugas kuliah yang fokus pada pemrograman dalam bahasa assembly. Tugas ini dirancang untuk memberikan pemahaman mendalam tentang pemrograman tingkat rendah dan arsitektur komputer.

## Landasan Teori

![Register Image](/img/registers.png)
(Gambar didapatkan dari [video ini](https://www.youtube.com/watch?v=Dh7GQ_joeE4).)

Dalam arsitektur ini, register memiliki ukuran 64 bit, ini berarti bahwa setiap register mampu menyimpan 64 bit atau 8 byte data. Ukuran yang besar ini memungkinkan prosesor untuk bekerja dengan bilangan yang sangat besar atau presisi tinggi. Namun, setiap register juga dapat dibagi menjadi bagian yang lebih kecil.

Misalnya, ada register bernama RAX yang memiliki ukuran penuh 64 bit. Setengah bagian bawah dari RAX disebut EAX dan bisa diperlakukan seperti register sendiri. EAX memiliki ukuran 32 bit atau 4 byte. Begitu juga, setengah bagian bawah dari EAX adalah AX, yang merupakan register 16 bit atau 2 byte. AX sendiri terdiri dari dua register lagi: AL (register 8 bit bagian bawah) dan AH (register 8 bit bagian atas).

Hal yang menarik adalah bahwa setengah bagian bawah dari register yang ada pada arsitektur x86 32-bit sebelumnya telah diperluas menjadi 64 bit pada arsitektur x64. Selain itu, beberapa register baru telah ditambahkan pada arsitektur x64.

Semua register ini dapat digunakan dalam kode perakitan (assembly code) yang kita tulis. Namun, perlu dicatat bahwa beberapa dari mereka, seperti RIP (Instruction Pointer) dan RFlags (Flags Register), tidak benar-benar digunakan sebagai register umum dan memiliki peran tertentu dalam eksekusi program.
