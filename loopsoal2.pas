program loopsoal2;

uses crt;

var
        angka:integer;
        tebakanke:integer;

Begin
clrscr;
        writeln('TEBAK ANGKA');
        tebakanke:=0;
        repeat
                begin
                writeln('Masukan angka tebakan:');
                readln(angka);
                tebakanke:=tebakanke+1;
                if(angka<>999) then
                writeln('TEBAKAN ANDA SALAH');
                end;
        until (angka=999);
        writeln('ANDA BENAR PADA TEBAKAN KE ',tebakanke);
readln;
end.
