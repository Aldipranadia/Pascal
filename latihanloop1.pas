program angka_ajaib;

uses crt;

var
        angka:integer;

begin
clrscr;
        repeat
        writeln('Masukan angka tebakan : ');
        readln(angka);
        if(angka<>999) then
                writeln('ANDA SALAH');
                writeln('SILAHKAN COBA LAGI');
                writeln('       |        ');
                writeln('       V        ');
        until(angka=999);
        writeln('ANDA BENAR');
readln;
end.