program arrayy;

uses crt;

var
        nama:array[1..10] of string;
        i:integer;

begin
clrscr;
        i:=1;
        while i<=10 do
                begin
                write('Masukan nama ke ',i,': ');
                readln(nama[i]);
                i:=i+1;
                end;
        writeln;
        i:=10;
        while i<=10 do
                begin
                writeln('Nama ke-',i,' adalah ',nama[i]);
                i:=i-1;
                end;
readln;
end.

