program tebak_angka_nol;

uses crt;

var
        angka:integer;

begin
clrscr;
        repeat
                begin
                writeln('Masukan angka:');
                readln(angka);
                if (angka=0) then
                        begin
                        writeln('BETUL');
                        end;
                end;
        until(angka<>0);
        writeln('SALAH');
readln;
end.