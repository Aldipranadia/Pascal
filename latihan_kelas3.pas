program loopsoal3;

uses crt;

var
        angka,nyawa,tebakanke:integer;

begin
clrscr;
        writeln('TEBAK ANGKA');
        tebakanke:=0;
        nyawa:=5;
        repeat
                begin
                writeln('Masukan angka tebakan: ');
                readln(angka);
                tebakanke:=tebakanke+1;
                if(angka<>999) then
                writeln('TEBAKAN ANDA SALAH');
                nyawa:=nyawa-1;
                writeln('Sisa ',nyawa,' nyawa');
                end;
        until((angka=999) or (nyawa<=0));
        if(angka=999) then
                begin
                writeln('**********ANDA BENAR**********');
                nyawa:=nyawa+1;
                writeln('PADA TEBAKAN KE-',tebakanke);
                writeln('SISA ',nyawa,' NYAWA');
                end
        else
                if(nyawa<=0) then
                        writeln('**********GAME OVER**********');

readln;
end.
