program tebak_angka_positif;

uses crt;

var
        angka:integer;

begin
clrscr;
        repeat
                begin
                writeln('Masukan angka tebakan:');
                readln(angka);
                        if (angka>0) then
                        writeln('Ini bilangan positif broo');
                end;
        until(angka<0);
        writeln('INI BUKAN BILANGAN POSITIF!!!');

readln;
end.
