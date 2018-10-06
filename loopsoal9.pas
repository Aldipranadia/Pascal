program jum_angka;

uses crt;

var
        angka,jum,i:integer;
begin
clrscr;
        i:=1;
        repeat
                begin
                writeln('Masukan angka tebakan ke-',i);
                readln(angka);
                jum:=jum+angka;
                i:=i+1;
                end;
        until(jum>100);
        writeln('Jumlah=',jum);

readln;
end.
