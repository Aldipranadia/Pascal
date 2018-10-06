program jumlah5angka;

uses crt;

var
        angka,i,hasil:integer;

begin
clrscr;
        repeat
        i:=i+1;
        writeln('Masukan angka ke-',i,' : ');
        readln(angka);
        hasil:=hasil+angka;
        until(hasil>100);
        writeln('TOTAL : ',hasil);
readln;
end.