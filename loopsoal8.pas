program penjumlahan_5_angka;

uses crt;

var
        angka,i,jum:integer;

begin
clrscr;
i:=1;
        repeat
                begin
                writeln('Masukan angka tebakan ke-',i);
                readln(angka);
                i:=i+1;
                jum:=jum+angka;
                end;
        until(i=6);
        writeln('Jumlah=',jum);


readln;
end.