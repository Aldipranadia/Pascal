program no2;

uses crt;

var
        angka:array[1..100] of integer;
        i:integer;
begin
clrscr;
        i:=1;
        repeat
                write('Masukan angka ke-',i,': ');
                readln(angka[i]);
                i:=i+1;
        until(angka[i-1]<0);
        writeln;
        for i:=1 to i-1 do
                writeln('angka ke- ',i,' adalah ',angka[i]);
readln;
end.
