program menentukan_sifat_bilangan;

uses crt;

var
        angka:integer;

begin
clrscr;
        writeln('Masukan angka : ');
        readln(angka);
        if(angka>0)then
                write(angka,' bersifat positif');
                if(angka<0)then
                        write(angka,' bersifat negatif');
                        if(angka=0)then
                                write(angka,' bersifat NOL')
        else
                if(angka mod 2=0)then
                        write(',genap');
                        if(angka mod 2<>0)then
                                write(',ganjil');
        if((angka mod 3=0)and(angka mod 4=0))then
                write(',Kelipatan 3 dan 4')
        else
                if(angka mod 3=0)then
                        write(',Kelipatan 3')
                else
                        if(angka mod 4=0)then
                                write(',kelipatan 4');
readln;
end.