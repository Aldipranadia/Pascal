program tebakan;

uses crt;

var
        angka:integer;

begin
clrscr;
        repeat
                writeln('Masukan Angka Tebakan:');
                readln(angka);
                if(angka<=100) then
                        writeln('BETUL');
        until(angka>100);
        writeln('SALAH');
readln;
end.