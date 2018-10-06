program latihan_if_then;

uses crt;

var
        angka:integer;

begin
        clrscr;
        writeln('Masukan angka:');
        readln(angka);
        if (angka mod 2=0) and (angka>10) then
           writeln('Bilangan ini genap dan lebih besar dari 10');
        if(angka mod 2=0) and (angka<10) then
           writeln('bilangan ini genap dan lebih kecil dari 10');
        if(angka mod 2 <>0) and (angka>0) then
           writeln('Bilangan ini ganjil dan lebih besar dari 10');
        if(angka mod 2<>0) and (angka<0) then
           writeln('Bilangan ini ganjil dan lebih kecil dari 10')
        else;
        readln;
end.