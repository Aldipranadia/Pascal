program loopsoal1;

uses crt;

var
        angka:integer;

Begin
clrscr;
        writeln('TEBAK ANGKA');
        repeat
                writeln('Masukan angka tebakan:');
                readln(angka);

        until (angka=999);
        writeln('ANDA BENAR');
readln;
end.
