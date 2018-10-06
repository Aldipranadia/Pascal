program Biodata;

uses crt;

var
        nama,kelas,nim:string;


BEGIN
clrscr;
        write('Masukan nama anda:');
        readln(nama);
        write('Masukan NIM anda:');
        readln(nim);
        write('Masukan kelas anda:');
        readln(kelas);


        writeln('Selamat ',nama,' Anda memiliki NIM = ',nim,' Dengan kelas ',kelas);
        readln;

END.

