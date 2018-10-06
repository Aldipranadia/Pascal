program tebak_angka_antara_1dan100;

uses crt;

var
        angka:integer;
begin
clrscr;
        repeat
                begin
                        write('Masukan angka tebakan:');
                        readln(angka);
                        if(angka<100) then
                        writeln('BETUL');
                end;
        until(angka>100);
        writeln('SALAH');

readln;
end.