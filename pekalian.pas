program perkalian;

uses crt;

var
        i,j,jum,k:integer;

begin
clrscr;
        write('Masukan angka pertama : ');
        readln(i);
        write('Masukan angka kedua : ');
        readln(j);
        for k:=1 to j do
                jum:=jum+i;
        writeln('Jumlah : ',jum);

readln;
end.